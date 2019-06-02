require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/shift'
require './lib/offsets'
require './lib/key_generator'
require 'pry'

class ShiftTest < Minitest::Test

  def setup
    offsets = [4, 13, 29, 35]
    @shift = Shift.new(offsets)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_it_has_attributes
    assert_equal [4, 13, 29, 35], @shift.offsets
  end

  def test_character_map_returns_array_of_27_elements
    assert_equal 27, @shift.character_map.count
  end

  def test_can_find_index_of_character_on_map
    assert_equal 1, @shift.find_index_of_character("b")
  end

  def test_it_rotates_as_directed_by_offsets
    assert_equal "lrntsmywvyf", @shift.encrypt("hello world")
    assert_equal "hello world", @shift.decrypt("lrntsmywvyf")
  end
end
