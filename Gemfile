source 'https://rubygems.org'
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.4'
gem 'rails', '~> 5.1.4'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem "pagseguro-oficial", "~> 2.5.0"
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end
group :development do
  gem 'better_errors'
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

source 'https://rails-assets.org' do
  #Igor Escobar jQuery Masks
  gem 'rails-assets-jQuery-Mask-Plugin'
end

gem 'client_side_validations'
gem 'client_side_validations-simple_form'
gem "font-awesome-rails"
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'bootstrap-sass', '~> 3.3.6'
gem 'devise'
gem 'simple_form'
gem 'carrierwave'
gem 'x-editable-rails'
gem 'kaminari'
gem "cocoon"
gem "paperclip", "~> 5.0.0"
gem "paperclip-ffmpeg", "~> 1.0.1"
gem 'haml-rails'
gem 'jquery-rails'
gem 'mysql2', '~> 0.3.18'
gem 'rails-erd', require: false, group: :development

group :development do
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rvm', '~> 0.1.1'
  gem 'foreman'
  gem 'html2haml'
  gem 'rails_layout'
end
