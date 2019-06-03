require './lib/enigma'
require './lib/key_generator'
require './lib/offsets'
require './lib/shift'

message_txt = ARGV[0]
encrypted = ARGV[1]

enigma = Enigma.new
message = File.read(message_txt).chomp.downcase
hash = enigma.encrypt(message)
file = File.open(encrypted, 'w')
file.puts hash[:encryption]

p "Created '#{encrypted}' with the key #{hash[:key]} and date #{hash[:date]}"
