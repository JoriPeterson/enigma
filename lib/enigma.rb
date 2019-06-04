class Enigma

  def encrypt(message, key = KeyGenerator.new.generate_key,
    date = KeyGenerator.new.generate_date)

    offsets = Offsets.new(key, date)
    shift = Shift.new(offsets.create_offsets(offsets.date_squared))

    { encryption: shift.encrypt(message),
      key: offsets.key,
      date: offsets.date
    }
  end

  def decrypt(message, key, date = KeyGenerator.new.generate_date)

    offsets = Offsets.new(key, date)
    shift = Shift.new(offsets.create_offsets(offsets.date_squared))

    { decryption: shift.decrypt(message),
      key: offsets.key,
      date: offsets.date
    }
  end
end
