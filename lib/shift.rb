class Shift
  attr_reader :offsets

  def initialize(offsets = Offsets.new.create_offsets)
    @offsets = offsets
  end

  def character_map
    ("a".."z").to_a << " "
  end

  def find_index_of_character(char)
    character_map.find_index(char)
  end

  def shift(message, move)
    array = message.split(//)
    new_message = []
    array.each_with_index do |char, message_index|
      index = find_index_of_character(char)
      if index.nil?
        new_message << char
      else
        (0..3).each do |num|
          if message_index % 4 == num
            new_message << character_map.rotate(move * @offsets[num])[index]
          end
        end
      end
    end
    new_message.join
  end

  def encrypt(message)
    shift(message, 1)
  end

  def decrypt(message)
    shift(message, -1)
  end
end
