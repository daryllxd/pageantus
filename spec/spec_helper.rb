require 'rubygems'

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'capybara/rails'
require 'factory_girl_rails'
require 'email_spec'

Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

RSpec.configure do |config|
  config.include Devise::TestHelpers, type: :controller
  config.include EmailSpec::Helpers
  config.include EmailSpec::Matchers
  config.include Capybara::DSL
  config.include FactoryGirl::Syntax::Methods
  config.include Features, type: :feature

  config.filter_run_excluding broken: true

  config.use_transactional_fixtures = false
  config.order = "random"
  config.infer_base_class_for_anonymous_controllers = false

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end
  config.before(:each) do
    DatabaseCleaner.start
  end
  config.after(:each) do
    DatabaseCleaner.clean
  end
end

  #if ENV["COVERAGE"]
    #require 'simplecov'
    #SimpleCov.start 'rails'
  #end
