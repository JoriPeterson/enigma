require './lib/enigma'
require './lib/key_generator'
require './lib/offsets'
require './lib/shift'

encrypted = ARGV[0]
decrypted = ARGV[1]
key = ARGV[2]
date = ARGV[3]

enigma = Enigma.new
encrypt_file = File.read(encrypted)
file = File.open(decrypted, 'w')
hash = enigma.decrypt(encrypt_file, key, date)
file.puts hash[:decryption]

p "Created '#{decryption}' with the key #{hash[:key]} and date #{hash[:date]}"
