# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require "rails/test_help"
require "shoulda"
require "factory_girl"
require "mocha"
#require File.dirname(__FILE__) + '/shoulda_extensions'

Factory.class_eval do
  self.definition_file_paths << "#{File.dirname(__FILE__)}/factories"
end
Factory.find_definitions
  

ActionMailer::Base.delivery_method = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "test.com"

Rails.backtrace_cleaner.remove_silencers!

# Configure capybara for integration testing
# require "capybara/rails"
# Capybara.default_driver   = :rack_test
# Capybara.default_selector = :css

# Run any available migration
ActiveRecord::Migrator.migrate File.expand_path("../dummy/db/migrate/", __FILE__)

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }