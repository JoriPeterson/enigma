require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class OffsetsTest < Minitest::Test

  def setup
    @offset = Offsets.new
    @key_1 = KeyGenerator.new
  end

  def test_it_exists
    assert_instance_of Offsets, @offset
  end

  def test_it_creates_offsets
    key = @key_1.generate_key
    date = @key_1.generate_date

    @offset.create_new_key(key, date)
  end
end
