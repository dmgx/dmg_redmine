source 'http://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.8'
gem "jquery-rails", "~> 2.0.2"
gem "i18n", "~> 0.6.0"
gem "coderay", "~> 1.0.6"
gem "fastercsv", "~> 1.5.0", :platforms => [:mri_18, :mingw_18, :jruby]
gem "builder", "3.0.0"

gem 'heroku'

# Optional gem for LDAP authentication
group :ldap do
  gem "net-ldap", "~> 0.3.1"
end

# Optional gem for OpenID authentication
group :openid do
  gem "ruby-openid", "~> 2.1.4", :require => "openid"
  gem "rack-openid"
end

# Optional gem for exporting the gantt to a PNG file, not supported with jruby
gem "rmagick", ">= 2.0.0"

# Database gems
gem 'pg'

# Override WEbBrick
gem 'thin'

group :development do
  gem "rdoc", ">= 2.4.2"
  gem "yard"
end

group :test do
  gem "shoulda", "~> 2.11"
  # Shoulda does not work nice on Ruby 1.9.3 and seems to need test-unit explicitely.
  gem "test-unit", :platforms => [:mri_19]
  gem "mocha", "0.12.3"
end
