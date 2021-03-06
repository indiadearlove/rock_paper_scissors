# Generated by cucumber-sinatra. (2015-01-09 13:31:03 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'game.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = Game

class GameWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  GameWorld.new
end
