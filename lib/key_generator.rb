require 'Date'

class KeyGenerator

  def generate_key
    5.times.map{rand(0..9) }.join
  end

  def generate_date
    Date.today.strftime("%d%m%y")
  end
end
