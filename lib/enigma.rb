class Enigma

  def encrypt(message, key = nil, date = nil)
    offsets = Offsets.new(key, date)
    shift = Shift.new(offsets.create_offsets)

    { encryption: shift.encrypt(message),
      key: offsets.key,
      date: offsets.date
    }
  end

end
