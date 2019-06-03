class Enigma

  def encrypt(message, key = KeyGenerator.new.generate_key,
    date = KeyGenerator.new.generate_date)

    offsets = Offsets.new(key, date)
    shift = Shift.new(offsets.create_offsets)

    { encryption: shift.encrypt(message),
      key: offsets.key,
      date: offsets.date
    }
  end

  def decrypt (message, key = nil, date = nil)
    offsets = Offsets.new(key, date)
    shift = Shift.new(offsets.create_offsets)

    { decryption: shift.decrypt(message),
      key: offsets.key,
      date: offsets.date
    }
  end
end
