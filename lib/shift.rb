class Shift
  attr_reader :message, :offsets

  def initialize(message, offsets = Offsets.new.create_offsets)
    @message = message
    @offsets = offsets
  end

  # Shift is responsible for encryption and decryption
  # based on the shift of the keys A-D
  # Each key has to be rotated by the correlating offset

end
