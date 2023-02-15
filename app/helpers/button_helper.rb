module ButtonHelper

  def button(children, url = "", options = {})
    css_classes = "Button Button--#{options[:type] || "default"}"
    inner_html = (
      children.html_safe +
      if options[:has_right_arrow]
        content_tag(:span, "", class: "Button__right-arrow", aria: { "hidden": true }).html_safe
      end
    )
    
    if url && !url.empty?
      link_to inner_html, url, class: css_classes
    else
      content_tag :span, inner_html, class: css_classes
    end
  end

end
