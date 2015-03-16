source 'https://rubygems.org'


gem 'rails', '4.1.4' # rails-api has some incompatibilities with 4.2
gem 'rails-api', '~> 0.3.1'

# For versioning our API we will use:
gem 'api-versions', '~> 1.2.0'

group :development, :test do
  gem 'sqlite3',     '1.3.9'
  gem 'spring',      '1.1.3'
end

# To use Jbuilder templates for JSON
gem 'jbuilder', '~> 2.1.3'
gem 'jbuilder_cache_multi', '~> 0.0.2'

# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

gem 'active_model_serializers'

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
end