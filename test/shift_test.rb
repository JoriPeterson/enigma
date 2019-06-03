require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/shift'
require './lib/offsets'
require 'pry'

class ShiftTest < Minitest::Test

  def setup
    offsets = [4, 13, 29, 35]
    @shift = Shift.new(offsets)
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_character_map_returns_array_of_27_elements
    assert_equal 27, @shift.character_map.count
  end

  def test_can_find_index_of_character_on_map
    assert_equal 1, @shift.find_index_of_character("b")
  end

  def test_shift_method_rotates_characters
    assert_equal "xruqrt!", @shift.shift("tesing!", 1)
  end

  def test_it_rotates_as_directed_by_offsets
    assert_equal "lrntsmywvyf!", @shift.encrypt("hello world!")
    assert_equal "hello world!", @shift.decrypt("lrntsmywvyf!")
  end
end
