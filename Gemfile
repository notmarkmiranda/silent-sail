source "https://rubygems.org"

gem "rails", "~> 7.2.1"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "factory_bot_rails"
  gem "faker"
  gem "rubocop-rails-omakase", require: false
  gem "rspec-rails", "~> 7.0.1"
end

group :development do
  gem "web-console"
end

group :test do
  gem "shoulda-matchers", "~> 6.0"
end
