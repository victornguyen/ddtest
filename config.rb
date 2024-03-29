###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'

set :partials_dir, 'partials'

set :fonts_dir, 'fonts'

after_configuration do
  # Add bower's directory to sprockets asset path
  sprockets.append_path File.join "#{root}", "bower_components"

  # Add slick carousel assets from bower
  # Ideally, we'd loop through a hash with asset paths and types to DRY this up
  sprockets.import_asset('slick-carousel/slick/ajax-loader.gif') {|p| "#{images_dir}/ajax-loader.gif"}
  sprockets.import_asset('slick-carousel/slick/fonts/slick.woff') {|p| "#{fonts_dir}/slick.woff"}
  sprockets.import_asset('slick-carousel/slick/fonts/slick.ttf') {|p| "#{fonts_dir}/slick.ttf"}
  sprockets.import_asset('slick-carousel/slick/fonts/slick.svg') {|p| "#{fonts_dir}/slick.svg"}
  sprockets.import_asset('slick-carousel/slick/fonts/slick.eot') {|p| "#{fonts_dir}/slick.eot"}
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# Deploy to gh-pages
activate :deploy do |deploy|
  deploy.method = :git
end
