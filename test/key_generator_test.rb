require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/key_generator'
require './lib/offsets'
require './lib/enigma'
require 'pry'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    key_gen = KeyGenerator.new
    assert_instance_of KeyGenerator, key_gen
  end
end
