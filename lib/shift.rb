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

  def encrypt(message)
    array = message.split(//)
    new_message = []
    array.each_with_index do |char, message_index|
      index = find_index_of_character(char)
        if message_index % 4 == 0
          new_message << character_map.rotate(@offsets[0])[index]
        elsif message_index % 4 == 1
          new_message << character_map.rotate(@offsets[1])[index]
        elsif message_index % 4 == 2
          new_message << character_map.rotate(@offsets[2])[index]
        elsif message_index % 4 == 3
          new_message << character_map.rotate(@offsets[3])[index]
        end
    end
    new_message.join
  end

  def decrypt(message)
    array = message.split(//)
    new_message = []
    array.each_with_index do |char, message_index|
      index = find_index_of_character(char)
        if message_index % 4 == 0
          new_message << character_map.rotate(-@offsets[0])[index]
        elsif message_index % 4 == 1
          new_message << character_map.rotate(-@offsets[1])[index]
        elsif message_index % 4 == 2
          new_message << character_map.rotate(-@offsets[2])[index]
        elsif message_index % 4 == 3
          new_message << character_map.rotate(-@offsets[3])[index]
        end
    end
    new_message.join
  end
end
