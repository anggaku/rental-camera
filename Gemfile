source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# bootstrap and jquery
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'jquery-rails'

gem 'owlcarousel-rails'

# for authentication
gem 'devise'

# for admin
gem 'rails_admin', '~> 1.3'

gem 'friendly_id', '~> 5.2.4'

# for pagination
gem 'will_paginate-bootstrap4'

# for text area editor
gem 'tinymce-rails'

# add breadcrumbs
gem "breadcrumbs_on_rails"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do

end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
