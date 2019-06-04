class Shift

  def initialize(offsets)
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
      if !character_map.include?(char)
        new_message << char
      else
        new_message << get_new_character(char, message_index, move)
      end
    end
    new_message.join
  end

  def get_new_character(char, message_index, move)
    index = find_index_of_character(char)
    (0..3).each do |num|
      if message_index % 4 == num
        return character_map.rotate(move * @offsets[num])[index]
      end
    end
  end

  def encrypt(message)
    shift(message, 1)
  end

  def decrypt(message)
    shift(message, -1)
  end
end
