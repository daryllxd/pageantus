module ApplicationHelper
  def nav_link(link_text, path)
    class_name = current_page?(path) ? 'active' : nil
    content_tag(:li, class: class_name) { link_to link_text, path}
  end
end
