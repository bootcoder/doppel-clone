source 'https://rubygems.org'
ruby '2.0.0'

# PostgreSQL driver
gem 'pg'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'

# Use Thin for our web server
gem 'thin'

gem 'activesupport', '~>4.1'
gem 'activerecord', '~>4.1'

gem 'rake'

gem 'shotgun'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec'
  gem 'capybara'
  gem 'database_cleaner'
end

group :test, :development do
  gem 'factory_girl'
  gem 'faker'
end
