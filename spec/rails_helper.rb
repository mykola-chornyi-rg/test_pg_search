ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort('The Rails environment is running in production mode!') unless Rails.application.config.development_mode
require 'rspec/rails'
require 'spec_helper'

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

ActiveRecord::Migration.check_pending!

RSpec.configure do |config|

  config.include Rails.application.routes.url_helpers
end
