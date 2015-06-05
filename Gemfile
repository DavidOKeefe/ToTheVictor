source 'https://rubygems.org'
ruby '2.2.1'

# Rails
gem 'rails', '4.1.4'

# ENV - load first
gem 'dotenv-rails', groups: [:development, :test]

# Database
gem 'pg'

# Assets
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'

# Links
gem 'turbolinks'

# JSON APIs
gem 'jbuilder', '~> 2.0'

# Authentication & Authorization
gem 'devise'

group :development do
  gem 'better_errors'
  gem 'spring'
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'pry-byebug'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'simplecov'
  gem 'turnip'
end
