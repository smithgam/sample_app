require 'rubygems'
require 'spork'
#uncomment the following line to use spork with the debugger
#require 'spork/ext/ruby-debug'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'
  
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  
  RSpec.configure do |config|
	config.fixture_path = "#{::Rails.root}/spec/fixtures"
	config.infer_base_class_for_anonymous_controllers = false
	config.order = "random"
	config.include Capybara::DSL
  end
end

Spork.each_run do
  # This code will be run each time you run your specs.

end






