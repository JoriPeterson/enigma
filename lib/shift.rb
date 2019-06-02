class Shift
  attr_reader :message, :offsets

  def initialize(message, offsets = Offsets.new.create_offsets)
    @message = message
    @offsets = offsets
  end

  def character_map
    ("a".."z").to_a << " "
  end

  def find_index_of_character(char)
    character_map.find_index(char)
  end
  #
  def encrypt(message)
    array = message.split(//)
    array.each do |char|
      #iterate over each letter in message
      index = find_index_of_character(char)
      # binding.pry

      #find index of character using character_map
        if index % 3 == 0

        # rotate by value of offset[0]
        elsif index % 3 == 1
        #
        elsif index % 3 == 2
        elsif index % 3 == 3
        end
        binding.pry
    end

  end
  # offsets = [4, 13, 29, 35]
end
