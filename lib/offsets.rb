class Offsets
  attr_reader :key, :date

  def initialize(key, date)
    @key = key
    @date = date
    @a_key = key[0..1]
    @b_key = key[1..2]
    @c_key = key[2..3]
    @d_key = key[3..4]
  end

# With the date:
# Takes today's date, squares it, and takes the last 4 digits

  def date_squared
    squared = @date.to_i * @date.to_i
    squared.to_s[-4..-1]
  end

# For the offsets:
# Takes A's assigned number and adds by index 0
# Takes B's assigned number and adds by index 1
# Takes C's assigned number and adds by index 2
# Takes D's assigned number and adds by index 3

end
