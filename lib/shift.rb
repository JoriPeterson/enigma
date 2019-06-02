class Shift
  attr_reader :message, :offsets

  def initialize(message, offsets = Offsets.new.create_offsets)
    @message = message
    @offsets = offsets
  end

  def character_map
    ("a".."z").to_a << " "
  end

  # def find_index_of_character("b")
  #   character_map.index("b")
  # end
  #
  # def encrypt(message)
  #   character_map
  #   # binding.pry
  #   (0..message.size).each do |index|
  #     binding.pry
  #     find_index_of_character(char)
  #       if index % 3 == 0
  #
  #       # rotate by value of offset[0]
  #       elsif index % 3 == 1
  #       #
  #       elsif index % 3 == 2
  #       elsif index % 3 == 3
  #       end
  #   end
  #   binding.pry
  # end
  # offsets = [4, 13, 29, 35]
end
