activate :blog do |blog|
  blog.sources = "resources/{year}-{month}-{day}-{title}.html"
  blog.paginate = false
  blog.layout = "resource_layout"
end

activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = "master"
  deploy.remote = "live"
end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

end
