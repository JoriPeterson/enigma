require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class KeyGeneratorTest < Minitest::Test

  def setup
    @key_gen = KeyGenerator.new
  end

  def test_it_exists
    assert_instance_of KeyGenerator, @key_gen
  end

  def test_it_generate_5_digit_key
    assert_equal 5, @key_gen.generate_key.size
  end

  def test_it_generates_a_date_in_ddmmyy_format
    skip
    #use a stub here?
  end
end
