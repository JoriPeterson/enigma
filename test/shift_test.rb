require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/shift'
require './lib/offsets'
require 'pry'

class ShiftTest < Minitest::Test

  def setup
    message = "Hello world"
    offsets = [4, 13, 29, 35]
    @shift = Shift.new(message, offsets)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_has_attributes
    assert_equal "Hello world", @shift.message
    assert_equal [4, 13, 29, 35], @shift.offsets
  end

  def test_it_rotates_as_directed_by_offsets
    assert_equal " ", @shift.encrypt(message)
    assert_equal " ", @shift.decrypt(message)
  end  
end
