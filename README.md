# Lecture 2 - Testing


## Test environment

* database

## Rspec rails

* gem 'rspec-rails', '~> 3.0'
* rails generate rspec:install

## Factory girl

* generates test data
* gem 'factory_girl_rails'


# RSpec
# spec/support/factory_girl.rb
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end

# Edit rails_helper.rb
# Add support require
require 'support/factory_girl'


# Generate factories 

rails g factory_girl:model comment
rails g factory_girl:model post


# Generate comment rspec
rails g rspec:model comment

---

# Capybara + cucumber + selenium

gem 'cucumber-rails', :require => false

group :test do
  gem 'database_cleaner'
end

rails generate cucumber:install


gem 'capybara'
gem 'cucumber-rails', :require => false
gem 'selenium-webdriver'


# Capybara cheat sheat
https://gist.github.com/zhengjia/428105