source "https://rubygems.org"

gem "rails", "4.0.2"
gem "sass-rails", "~> 4.0.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "therubyracer", platforms: :ruby
gem "jquery-rails"
gem "turbolinks"
gem "jbuilder", "~> 1.2"
gem "bootstrap-sass", "~> 2.3.2.1"
gem "bcrypt-ruby", '3.1.2'
gem "font-awesome-sass-rails"
gem "simple_form", github: "plataformatec/simple_form"
gem "devise", "~> 3.0.0"
gem "cancan"
gem "omniauth"

group :development do
  gem "guard-rspec"
  gem "quiet_assets"
end

group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails"
end

group :test do
  gem "ffaker"
  gem "simplecov", require: false
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "growl", '1.0.3'
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
end

group :doc do
  gem 'sdoc', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end