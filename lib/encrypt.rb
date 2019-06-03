require './lib/enigma'
require './lib/key_generator'
require './lib/offsets'
require './lib/shift'

enigma = Enigma.new
message = File.read(ARGV[0]).chomp.downcase
hash = enigma.encrypt(message)
file = File.open(ARGV[1], 'w')
file.puts hash[:encryption]

p "Created 'encrypted.txt' with the key #{hash[:key]} and date #{hash[:date]}"
