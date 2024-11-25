# frozen_string_literal: true

# The main application module for MyApp.
# This module defines the configuration for the Rails application,
# including the loading of defaults, framework settings, and any
# environment-specific configurations.
require_relative 'boot'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Myapp
  # Defines the main application class for MyApp.
  # This class initializes the configuration defaults for the Rails framework
  # version specified and provides settings specific to the application.
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
