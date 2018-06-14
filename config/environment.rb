# Load the rails application
require File.expand_path('application', __dir__)

# Initialize the rails application
Blog::Application.initialize!

# remove field_with_errors wrapper
ActionView::Base.field_error_proc = proc do |html_tag, _instance|
  html_tag.html_safe
end
