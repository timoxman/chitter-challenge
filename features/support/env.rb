# Generated by cucumber-sinatra. (2015-05-22 14:57:57 +0100)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'app/server.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

#require './features/support/database_cleaner_setup'
require_relative './database_cleaner_setup'


Capybara.app = ChitterWeb

class ChitterWebWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  ChitterWebWorld.new
end