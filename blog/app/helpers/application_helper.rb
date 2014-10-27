module ApplicationHelper
  
  def friendly_date(d)
    d.strftime("%B %e, %Y")
  end
  
  def add_andrew_to_something()
    return "Andrew!"
  end
  
end
