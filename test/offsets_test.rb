require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class OffsetsTest < Minitest::Test

  def setup
    key = "01234"
    date = "010619"
    @offset = Offsets.new(key, date)
  end

  def test_it_exists
    assert_instance_of Offsets, @offset
  end

  def test_it_has_attributes
    assert_equal "01234", @offset.key
    assert_equal "010619", @offset.date
  end

  def test_date_squared_method_returns_last_four_digits
    assert_equal "3161", @offset.date_squared
  end

  def test_new_offsets
    assert_equal [4, 13, 29, 35], @offset.create_offsets
  end

  def test_optional_parameters
    offset_2 = Offsets.new
    assert_equal 5, offset_2.key.size
    assert_equal 6, offset_2.date.size
  end
end
