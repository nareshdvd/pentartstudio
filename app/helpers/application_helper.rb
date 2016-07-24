module ApplicationHelper
  def get_top_menu_item_html(menu_name, display_name)
    return "<span class='menu_icon #{menu_name}'></span><span class='menu_text'>#{display_name}</span>"
  end
end
