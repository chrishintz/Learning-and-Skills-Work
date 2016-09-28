# You decide to test if your oddly-mathematical heating company is fulfilling it's
# All-Time Max, Min, Mean and Mode Temperature Guarantee.
# Write a class TempTracker with these methods:
    # 1) insert() - records a new Temperature
    # 2) get_max() - returns the highest temp we've seen so far
    # 3) get_min() - returns the lowest temp we've seen so far
    # 4) get_mean() - returns the mean of all temps we've seen so far
    # 5) get_mode() - returns the mode of all temps we've seen so far
# Optimize for space and time.  get_mean() should return a float, but the rest of the getter functions can return integers.
# Temperatures will all be inserted as integers.
# We'll record our temperatures in Fahrenheit, so we can assume they'll all be in the range 0..110.
# If there is more than one mode, return any of the modes.

class TempTracker
  def initializer
    # for mode
    @occurences = [0] * (111) # array of 0s at indices 0..110
    @max_occurences = 0
    @mode = nil

    # for mean
    @total_numbers = 0
    @total_sum     = 0.0
    @mean          = nil

    # for min/max
    @min_temp = nil
    @max_temp = nil
  end

  def insert(temperature)
    # For mode
    @occurences[temperature] += 1
    if @occurences[temperature] > @max_occurences
      @mode = temperature
      @max_occurences = @occurences[temperature]
    end

    # for mean
    @total_numbers += 1
    @total_sum     += temperature
    @mean           = total_sum / total_numbers

    # for min/max
    if @max_temp.nil? or temperature > @max_temp
      @max_temp = temperature
    end
    if @min_temp.nil? or temperature < @min_temp
      @min_temp = temperature
    end
  end

  def get_max
    return @max_temp
  end

  def get_min
    return @min_temp
  end

  def get_mean
    return @mean
  end

  def get_mode
    return @mode
  end

end
