source 'https://rubygems.org'

gem 'pry'
gem 'rails', '4.2.1'

gem 'sass-rails', '~> 5.0'
# Because I cannot be bothered writing CSS by hand.
gem 'bootstrap-sass', '~> 3.3.6'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

group :development do
  gem 'therubyracer', platforms: :ruby
  gem 'sqlite3'
end
group :production do
  gem 'rails_12factor'
  gem 'pg'
end

# Authentication
gem 'devise'
gem 'letter_opener'
gem 'cancancan'
gem 'rolify'
gem 'paperclip'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# Because Omni Consumer Products said so.
gem 'rubocop', require: false  

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

group :development, :test do
  gem 'exception_notification'
  gem 'better_errors'
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'

  gem 'cucumber-rails', :require => false
end

group :test do
  gem 'database_cleaner'
  gem 'capybara'

  gem 'selenium-webdriver'
end
