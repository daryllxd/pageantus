require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module Pageantus
  class Application < Rails::Application

    config.generators do |g|
      
      g.assets false
      g.helper false
      g.helper_specs false
      g.test_framework :rspec, fixture: false
      g.view_specs false
            
    end

    config.i18n.enforce_available_locales = true

  end
end
