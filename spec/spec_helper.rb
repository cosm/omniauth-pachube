require 'bundler/setup'
require 'rspec'
require 'simplecov'

SimpleCov.start do
  add_filter '.gem/'
end

Dir[File.expand_path('../support/**/*', __FILE__)].each { |f| require f }

RSpec.configure do |config|
end
