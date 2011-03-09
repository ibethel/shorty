module ApplicationHelper
  
  def short_url(short)
    "#{root_url}#{short.contracted}"
  end
  
  def stats_url(short)
    "#{root_url}#{short.contracted}+"
  end
  
end