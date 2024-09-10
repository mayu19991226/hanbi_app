class SearchAutocompleteController < ApplicationController
  def index
    query = params[:query]
    return render json: [] if query.blank?

    # Ransackを使って検索結果を取得
    # Postモデルのtitleまたはbodyに検索文字列が含まれるものを検索する
    posts = Post.where("title LIKE ? OR body LIKE ?", "%#{query}%", "%#{query}%")

    # Postモデルの結果を処理する
    post_results = posts.flat_map do |post|
      results = []
      if post.title.include?(query)
        results << post.title
      end
      if post.body.include?(query)
        truncated_body = truncate(post.body, length: 20, query: query)
        results << truncated_body
      end
      results
    end

    # コメントの検索結果
    comment_results = Comment.ransack(body_cont: query).result(distinct: true).pluck(:body)
    # コメントも20文字に制限する
    comment_results = comment_results.map { |body| truncate(body, length: 20, query: query) }

    # 検索結果をマージして返す
    results = (post_results + comment_results).uniq.first(10) # 表示件数を制限
    render json: results
  end

  private

  def truncate(text, length:, query:)
    start_index = [text.downcase.index(query.downcase) - (length / 2), 0].max
    end_index = [start_index + length, text.length].min
    snippet = text[start_index...end_index]
    snippet += "..." if end_index < text.length
    snippet
  end
end
