require './lib/enigma'
require './lib/key_generator'
require './lib/offsets'
require './lib/shift'


enigma = Enigma.new
message = File.read("message.txt").chomp.downcase
hash = enigma.encrypt(message)
File.open('encrypted.txt', 'w')

# require 'pry'; binding.pry

ARGV == ["message.txt", "encrypted.txt"]

p "Created 'encrypted.txt' with the key #{hash[:key]} and date #{hash[:date]}"
