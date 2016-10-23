module ApplicationHelper
  module ApplicationHelper
    def sortable(name, title = nil)
      title ||= name.titleize
      direction = (name == sort_name && sort_direction == "asc") ? "desc" : "asc"
      link_to title, :sort => column, :direction => direction
    end
  end
end
