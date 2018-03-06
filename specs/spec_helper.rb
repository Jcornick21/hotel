require 'simplecov'
SimpleCov.start
# require 'time'
# require 'date'
require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'
# add my spec files as i create them for each class
require_relative '../lib/reservation'
require_relative '../lib/hotel_room'
require_relative '../lib/administrator'
# require_relative '../lib/'


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
