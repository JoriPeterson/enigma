require './lib/enigma'
require './lib/key_generator'
require './lib/offsets'
require './lib/shift'

enigma = Enigma.new
message = File.read(ARGV[0])
hash = enigma.decrypt(message, ARGV[2], ARGV[3])
file = File.open(ARGV[1], 'w')
file.puts hash[:decryption]

p "Created '#{ARGV[1]}' with the key #{hash[:key]} and date #{hash[:date]}"
