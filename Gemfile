source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'
gem 'jbuilder', '~> 2.7'
gem 'mysql2'
gem 'puma'
gem 'rails', '~> 6.0.3'
gem 'sass-rails', '>= 6'
gem 'uglifier'
gem 'webpacker', '6.0.0.beta.7'
gem 'lograge'

# Use Active Storage variant
gem 'active_storage_validations'
gem 'asset_sync'
gem 'aws-sdk-s3', require: false
gem 'fog-aws'
gem 'image_processing'

gem 'apollo_upload_server', '2.0.3'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise'
gem 'doorkeeper'
gem 'graphql'
gem 'omniauth'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# tool gems
gem 'dalli'
gem 'dotenv-rails'
gem 'http'

group :development, :test do
  gem 'awesome_print', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'letter_opener'
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'rspec-rails', '~> 4.0.1'
  gem 'shoulda-matchers', '~> 4.1.2'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.2'
  gem 'graphiql-rails'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'

  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'capistrano-nvm', require: false
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-puma', '~> 4.0.0'
  gem 'slackistrano'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
