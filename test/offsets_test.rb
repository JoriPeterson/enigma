require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class OffsetsTest < Minitest::Test

  def setup
    # @key_1 = KeyGenerator.new
    # key = @key_1.generate_key
    # date = @key_1.generate_date
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
end
