class Offsets

  def initialize(key)
    @key = key
    @date = date
    @a_key = key[0,1]
    @b_key = key[1,2]
    @c_key = key[2,3]
    @d_key = key[3,4]
  end

# Takes 5 digit key and date and produces offsets
# with the following actions:

# With the generated key:
# Assigns index 0,1 to A
# Assigns index 1,2 to B
# Assigns index 2,3 to C
# Assigns index 3,4 to D

# With the date:
# Takes today's date, squares it, and takes the last 4 digits

# For the offsets:
# Takes A's assigned number and adds by index 0
# Takes B's assigned number and adds by index 1
# Takes C's assigned number and adds by index 2
# Takes D's assigned number and adds by index 3

end
