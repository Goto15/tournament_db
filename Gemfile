# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'
# Use Puma as the app server
gem 'puma', '>= 4.3.3'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'fast_jsonapi'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Controller Action Caching
# gem 'actionpack-action_caching'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# Metrics Gem from: https://github.com/johnewart/ruby-metrics
gem 'ruby-metrics'

# Elo rating gem from: https://github.com/mxhold/elo_rating
gem 'elo_rating', '~> 1.0'

# RuboCop: static code analyzer and code formatter
gem 'rubocop', require: false

# Call 'byebug' anywhere in the code to stop execution and get a debugger console
group :development, :test do
  gem 'byebug', platform: :mri
end

# Run against the latest stable release
group :development, :test do
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 4.0.0'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
