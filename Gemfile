source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'bootstrap-sass', '~> 2.3'
gem 'bcrypt-ruby', github: 'codahale/bcrypt-ruby' # Use ActiveModel has_secure_password
gem 'bson_ext'
gem 'coffee-rails', '~> 4.0.0'
gem 'jbuilder', '~> 1.2'
gem 'jquery-rails'
gem 'mongoid', github: 'mongoid/mongoid'
gem 'redis'
gem 'sass-rails', '~> 4.0.0'
gem 'sinatra', '>= 1.3.0', :require => nil # used for sidekiq web interface
gem 'slim'
gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'
gem 'sidekiq'
gem 'json'

group :test do
  gem 'database_cleaner'
  gem 'capybara'
  gem 'mongoid-rspec', '>= 1.4.6'
  gem 'timecop'
  gem 'webmock'
end

group :test, :development do
  gem 'awesome_print'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails', '>= 2.0.1'
  gem 'mail_view', '~> 1.0.3'
end

# Use debugger
# gem 'debugger', group: [:development, :test]
