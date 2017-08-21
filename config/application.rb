require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module EscuderiaApi
 class Application < Rails::Application
    config.middleware.use Rack::Cors do
      allow do
        origins "*"
        resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :delete, :options, :head]
      end
    end
    #config.active_record.raise_in_transactional_callbacks = true
    config.active_job.queue_adapter = :sidekiq
  end
end