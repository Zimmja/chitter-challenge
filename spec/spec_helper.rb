require_relative './setup_test_database'

ENV['RACK_ENV'] = 'test'
ENV['ENVIRONMENT'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'capybara/rspec'
require 'rspec'
require 'simplecov'
require 'simplecov-console'
require 'tests/test_helpers' # Includes methods for use in spec tests
Capybara.app = Chitter

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.before(:suite) { setup_test_database }
  config.after(:suite) do
    # puts
    # puts "\e[33mHave you considered running rubocop? It will help you improve your code!\e[0m"
    # puts "\e[33mTry it now! Just run: rubocop\e[0m"
  end
end
