module ApplicationHelper
  def excerpt_highlight(text, term, radius: 28)
    return truncate(text, length: radius, omission: '...') unless term.present?

    term = Regexp.escape(term)  # 特殊文字をエスケープする
    term_regex = /(#{term})/i  # ハイライトする正規表現

    term_index = text.index(term)
    return truncate(text, length: radius, omission: '...') if term_index.nil?

    # ハイライトする部分を抽出
    start_pos = [term_index - radius / 2, 0].max
    end_pos = [start_pos + radius, text.length].min
    snippet = text[start_pos..end_pos] || ''

    # ハイライトを適用
    highlighted_snippet = snippet.gsub(term_regex, '<mark>\1</mark>')

    start_pos > 0 ? "...#{highlighted_snippet}..." : highlighted_snippet
  end
end
