source 'https://rubygems.org'

ruby '3.0.2'

gem 'sinatra'
gem 'sinatra-contrib'
gem 'webrick'

group :test do
  gem 'rspec'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end

group :development, :test do
  gem 'capybara'
  gem 'pg'
  gem 'rubocop'
  gem 'selenium-webdriver'
end
