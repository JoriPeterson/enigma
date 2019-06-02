require './test/test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/enigma'
require './lib/key_generator.rb'
require './lib/offsets'
require './lib/shift'
require 'pry'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_encrypts_messages_with_a_key_and_a_date

    expected =  {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895" }
    actual = @enigma.encrypt("hello world", "02715", "040895")

    assert_equal expected, actual
  end

  def test_it_decrypts_messages_with_a_key_and_a_date
    skip
    expected =  {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895" }
    actual = @enigma.encrypt("hello world", "02715", "040895")

    assert_equal expected, actual
  end

  def test_it_encrypts_messages_with_a_key_and_todays_date
    skip
    expected =  {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895" }
    # change today's date to a stub!!
    actual = @enigma.encrypt("hello world", "02715", "040895")

    assert_equal expected, actual
  end

  def test_it_decrypts_messages_with_a_key_and_todays_date
    skip
    expected =  {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895" }
    # change today's date to a stub!!
    actual = @enigma.encrypt("hello world", "02715", "040895")

    assert_equal expected, actual
  end

  def test_it_encrypts_with_generated_key_and_todays_date

    expected =  {
     }
    # change today's date to a stub!!
    actual = @enigma.encrypt("hello world", "02715", "020619")

    assert_equal expected, actual
  end

  def test_it_decrypts_with_generated_key_and_todays_date
    skip
    expected =  {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895" }
    # change today's date to a stub!!
    actual = @enigma.encrypt("hello world", "02715", "040895")

    assert_equal expected, actual
  end
end
