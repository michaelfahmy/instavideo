source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

# Master gems
gem 'rails', '~> 6.0.3'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false

# Database gems
gem 'pg', '>= 0.18', '< 2.0'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# HTML/JS gems
gem 'hamlit-rails'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'

# Authentication gems
gem 'devise'

# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

group :development, :test do
  gem 'faker'
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'rubocop'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'rubocop-performance'
  gem 'bullet'
  gem 'brakeman'
  gem 'pry-rails'
  gem 'tablesmith'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'letter_opener_web'
  gem 'haml_lint', require: false

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'shoulda-matchers'
  gem 'undercover'
  gem 'simplecov'
  gem 'simplecov-lcov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
