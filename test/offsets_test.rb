require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/keygenerator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class OffsetsTest < Minitest::Test

  def test_it_exists
    offset = Offsets.new
    assert_instance_of Offsets, offset
  end
end
