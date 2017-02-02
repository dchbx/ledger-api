source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.7'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'

# Accounting
gem "plutus"

gem 'aws-sdk', '2.2.4'

# System settings
gem "config", '~> 1.0.0'

# Strips away unnessary views/helpers directories to enhance API performance
gem 'rails-api'

# Create custom JSON endpoints
gem 'active_model_serializers', '~> 0.10.0'

# Use to handle authentication to API
gem 'devise'

# Use to handle authorization to API from HTTP request
gem 'jwt'

# Allows the use of responds_to with rails-api gem
gem 'responders'

# Rails console
gem 'rb-readline'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'rspec-rails', '~> 3.5'
  gem 'rspec_junit_formatter'

  gem 'pry'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'
  gem 'pry-remote'

  gem 'factory_girl_rails'

  gem 'database_cleaner'

  # YARD documentation generation tool: http://yardoc.org/
  gem 'yard', '~> 0.9.5'
  # Use to handle cross-origin protection
  gem 'rack-cors'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
