# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.5' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.gem 'rack-openid', :version => '1.1.2', :lib => 'rack/openid'
  config.gem 'devise', :version => '1.0.10'
  config.gem 'devise_openid_authenticatable'

  config.middleware.use "Rack::OpenID"

  config.time_zone = 'UTC'
  config.i18n.default_locale = :en
end
