source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

gem 'execjs', '2.2.2'

gem 'devise', '3.4.1'

gem 'twitter-bootstrap-rails', '3.2.0'

group :assets do
    # Use SCSS for stylesheets
    gem 'sass-rails', '~> 4.0.3'
    # Use Uglifier as compressor for JavaScript assets
    gem 'uglifier', '>= 1.3.0'
    # Use CoffeeScript for .js.coffee assets and views
    gem 'coffee-rails', '~> 4.0.0'
    # See https://github.com/sstephenson/execjs#readme for more supported runtimes
    gem 'therubyracer',  platforms: :ruby
    # Use LESS for stylesheets
    gem 'less-rails', '2.6.0'
end

group :production do
    gem 'pg', '0.18.1'
    gem 'unicorn', '4.8.3'
end

group :development do
    # Use sqlite3 as the database for Active Record
    gem 'sqlite3'
    
    # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
    gem 'spring'
end


group :doc do
    # bundle exec rake doc:rails generates the API under doc/api.
    gem 'sdoc', '~> 0.4.0'
end

group :development, :test do
    gem 'rspec-rails', '3.1.0'
    gem 'capybara', '2.4.4'
    gem 'guard-rspec', '4.5.0'
    gem 'factory_girl_rails', '4.5.0'
    gem 'shoulda-matchers', '2.7.0', require: false
    gem 'database_cleaner', '1.4.0'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
