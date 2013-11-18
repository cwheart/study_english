# source 'https://rubygems.org'
source 'http://ruby.taobao.org'

ruby '2.0.0'
gem 'newrelic_rpm'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.1'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# gem 'mysql2'
# gem "mongoid", "~> 3.0.0"
gem 'mongoid', git: 'https://github.com/mongoid/mongoid.git'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem "twitter-bootstrap-rails"

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

gem 'kaminari'

gem 'grape'
gem 'grape-swagger'
gem 'grape-entity'

gem 'devise'
gem 'simple_form', '~> 3.0.0.rc'
# gem 'client_side_validations'
# gem 'client_side_validations-simple_form'
# gem 'client_side_validations-mongoid'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :production do
  gem 'unicorn'
  # gem 'puma'
end

group :development do
  gem 'capistrano', '~> 3.0.0'
  gem 'capistrano-rvm', '~> 0.0.2'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
end

group :test do
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
