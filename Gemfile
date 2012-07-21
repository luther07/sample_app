source 'https://rubygems.org'

gem 'rails', '3.2.6'

# We don't have to install Rspec itself, because it is a
# dependency of rspec-rails and thus will be installed
# automatically.
group :development, :test do
  gem 'sqlite3', '1.3.5'
  gem 'rspec-rails', '2.10.0'
  gem 'guard-rspec', '0.5.5'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '3.2.4'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.0.0'

group :test do
  gem 'capybara', '1.1.2'
  # System-dependent gems
  gem 'rb-inotify', '0.8.8'
  gem 'libnotify', '0.5.9'
end

group :production do
  gem 'pg', '0.12.2'
end