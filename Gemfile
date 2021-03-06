source 'https://rubygems.org'

ruby "2.2.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Pagination
gem 'will_paginate', '~> 3.0.5'
# Factory Girl
gem 'factory_girl_rails', '~> 4.0'
# Stripe for payments
gem 'stripe'
# AngularJS framework
gem 'angularjs-rails', '>= 1.5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
# Brakeman for finding security issues
gem 'brakeman', :require => false
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  
  # rspec for testing and debugging
  gem 'rspec-rails', '~> 3.0'

end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Guard for running tasks automatically
  gem 'guard'
  gem 'guard-rspec', require: false

  # Spork for speeding up tests by loading project environment once
  gem 'spork-rails'

  # guard-spork plugin to connect guard and spork
  gem 'guard-spork'
end

group :production do
	gem 'rails_12factor'
	gem 'pg'
end

# Authentication gem
gem 'devise'

# Authorization gem
gem 'cancancan'

gem 'memcachier'
# Memcache client
gem 'dalli'
# Redis-rails advanced key store
gem 'redis-rails'