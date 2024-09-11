class SearchAutocompleteController < ApplicationController
  def index
    query = params[:query]
    return render json: [] if query.blank?

    posts = Post.where("title LIKE ? OR body LIKE ?", "%#{query}%", "%#{query}%")

    post_results = posts.flat_map do |post|
      results = []
      if post.title.include?(query)
        results << { fullText: post.title, displayText: truncate(post.title, length: 20, query: query) }
      end
      if post.body.include?(query)
        truncated_body = truncate(post.body, length: 20, query: query)
        results << { fullText: post.body, displayText: truncated_body }
      end
      results
    end

    comment_results = Comment.ransack(body_cont: query).result(distinct: true).pluck(:body)
    comment_results = comment_results.map { |body| { fullText: body, displayText: truncate(body, length: 20, query: query) } }

    results = (post_results + comment_results).uniq.first(10)
    render json: results
  end

  private

  def truncate(text, length:, query:)
    index = text.downcase.index(query.downcase)
    return text if index.nil? || text.length <= length

    start_index = [index - (length / 2), 0].max
    end_index = [start_index + length, text.length].min
    snippet = text[start_index...end_index]
    snippet = "..." + snippet if start_index > 0
    snippet += "..." if end_index < text.length
    snippet
  end
end
