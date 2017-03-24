module ApplicationHelper
  def full_title(title = '')
    base_title = 'Ruby on Rails Tutorial Sample App'
    title.present? ? "#{title} | #{base_title}" : base_title
  end
end
