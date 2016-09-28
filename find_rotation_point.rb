class Blah
  words = [
    'ptolemaic',
    'retrograde',
    'supplant',
    'undulate',
    'xenoepist',
    'asymptote',
    'babka',
    'banoffee',
    'engender',
    'karpatka',
    'othellolagkage',
  ]

  def find_rotation_point(words)
    first_word = words[0]

    floor_index = 0

    ceiling_index = words.length - 1 # 10

    while floor_index < ceiling_index
      # guess a point halfway between floor and ceiling
      guess_index = floor_index + ((ceiling_index - floor_index) / 2) # guess_index = 5

      # if guess comes before first word
      if words[guess_index] > first_word
        # go right
        floor_index = guess_index
      else
        # go left
        ceiling_index = guess_index
      end

      # if floor and ceiling have converged
      if floor_index + 1 == ceiling_index
        # between floor and ceiling is where we flipped to the beginning
        # so ceiling is alphabetically first
        return ceiling_index
      end
    end
  end

  # a = Blah.new
  # result = a.find_rotation_point(words)
  # return result

end
