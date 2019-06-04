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

  def date_squared
    squared = @date.to_i * @date.to_i
    squared.to_s[-4..-1]
  end

  def create_offsets(date_squared)
    new_a = @a_key.to_i + date_squared[0].to_i
    new_b = @b_key.to_i + date_squared[1].to_i
    new_c = @c_key.to_i + date_squared[2].to_i
    new_d = @d_key.to_i + date_squared[3].to_i
    [new_a, new_b, new_c, new_d]
  end

end
