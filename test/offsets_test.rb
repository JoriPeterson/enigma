require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class OffsetsTest < Minitest::Test

  def setup
    @key_1 = KeyGenerator.new

    key = @key_1.generate_key
    date = @key_1.generate_date

    @offset = Offsets.new(key, date)
  end

  def test_it_exists
    assert_instance_of Offsets, @offset
  end

  def test_it_has_attributes
    assert_equal 01234, @offset.key
    assert_equal "060519", @offset.date
  end

  # def test_it_creates_offsets
  #   key = @key_1.generate_key
  #   date = @key_1.generate_date
  #
  #   @offset.create_new_key(key, date)
  # end
end
