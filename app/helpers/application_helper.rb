module ApplicationHelper
  def short_url(short)
    "#{root_url}#{short.contracted}"
  end

  def local_form_url(form)
    "#{root_url}#{form.url_slug}"
  end

  def stats_url(short)
    "#{admin_root_url}/#{short.contracted}"
  end
end
