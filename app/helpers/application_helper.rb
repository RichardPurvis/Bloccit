module ApplicationHelper

 def form_group_tag(errors, &block)
     content_tag :div, class: "form-group#{errors.any? ? ' has-error' : ''}", &block
 end


  def markdown(text)
    renderer = Redcarpet::Render::HTML.new
    extensions = {fenced_code_blocks: true}
    redcarpet = Redcarpet::Markdown.new(renderer, extensions)
    (redcarpet.render text).html_safe
  end
end