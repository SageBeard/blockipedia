module ApplicationHelper
  def markdown(text)
    Markdown.new(text, :filter_html, :auotlink, :no_intraemphasis, :fenced_code).to_html.html_safe
  end
end
