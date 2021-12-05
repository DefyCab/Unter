require_relative 'boot'
require 'rails'
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'

Bundler.require(*Rails.groups)

module Unter
  class Application < Rails::Application
    config.load_defaults 6.1
    config.api_only = true

    config.generators do |g|
      g.helper = false
      g.assets = false
      g.controller_specs = false
      g.feature_specs = false
      g.view_specs = false
      g.mailer_specs = false
      g.routing_specs = false
      g.channel_specs = false
      g.generator_specs = false
      g.job_specs = false
      g.sytem_specs = false
      g.request_specs = false
      g.helper_specs = false
    end
  end
end
