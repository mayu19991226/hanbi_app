class SearchAutocompleteController < ApplicationController
  def index
    query = params[:query]
    return render json: [] if query.blank?

    # Ransackを使って検索結果を取得
    # Postモデルのtitleまたはbodyに検索文字列が含まれるものを検索する
    posts = Post.where("title LIKE ? OR body LIKE ?", "%#{query}%", "%#{query}%")

    # Postモデルの結果を処理する
    post_results = posts.map do |post|
      if post.body.include?(query)
        truncated_body = truncate(post.body, length: 20)
        truncated_body
      elsif post.title.include?(query)
        post.title
      end
    end.compact.uniq

    # コメントの検索結果
    comment_results = Comment.ransack(body_cont: query).result(distinct: true).pluck(:body)
    # コメントも20文字に制限する
    comment_results = comment_results.map { |body| truncate(body, length: 20) }

    # 検索結果をマージして返す
    results = (post_results + comment_results).uniq.first(10) # 表示件数を制限
    render json: results
  end

  private

  def truncate(text, length:)
    text.length > length ? "#{text[0, length]}..." : text
  end
end
