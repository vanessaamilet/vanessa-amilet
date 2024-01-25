source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0', '>= 7.0.4'

# Use Puma as the app server
gem 'puma', '~> 6.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Libsass Library
gem 'sassc', '~> 2.1.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
#gem 'therubyracer', platforms: :ruby
gem 'mini_racer'
#gem 'execjs'
#gem 'libv8', '~> 8.4', '>= 8.4.255.0'
gem 'sprockets', '~> 3.6', '>= 3.6.3' # add this pessimistic operator with twiddle-wakka

gem 'json', '~> 2.6', '>= 2.6.3'

gem 'slim-rails'
gem 'sitemap_generator', '~> 6.1', '>= 6.1.2'
gem 'meta-tags', '~> 2.18'

# Gems for Contact Form & Mail
gem 'mail_form', '~> 1.9'
gem 'simple_form', '~> 5.1'

gem 'mailgun-ruby', '~> 1.2', '>= 1.2.6'
gem "figaro"

# Use sqlite3 as the database for Active Record
# gem 'sqlite3', group: :development

# Use PostgreSQL as the database for Active Record
#gem 'pg'

# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails', '~> 4.1.0'
# gem 'coffee-rails'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby


# Use jquery as the JavaScript library
# gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 2.4', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'nokogiri', '~> 1.10', '>= 1.10.9'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
# gem 'web-console', '~> 2.0'
  gem 'web-console', '>= 3.3.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # 2020 Rails Update- Add Listen Gem
  gem 'listen', '~> 3.2'
end

group :production do
    gem 'pg', '~> 1.4', '>= 1.4.5'
    
    # gem 'rails_12factor'
end

