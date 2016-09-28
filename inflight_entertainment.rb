# Users on longer flights like to start a second movie right when their first one
# ends, but they complain that the plane usually lands before they can see the ending.
# So you're bilding a feature for choosing two movies whose total runtimes will equal the exact flight length.

# Write a function that takes an integer flight_lenght(in minutes) and an array
# of intergers 'movie_lenghts(in minutes)' and returns a boolean indicating whether
# there are two numbers in movie_lenghts whose sum eqals flight_length

# Assumptions:
# Assume your users will watch exactly two movies
# Don't make your users watch the same movie twice
# Optimize for runtime over memory

require 'set'

def get_two_movies_to_fill_flight(movie_lengths, flight_length)
  # movie lengths we've seen so far
  movie_lengths_seen = Set.new

  movie_lengths.each do |first_movie_length|
    matching_second_movie_length = flight_length - first_movie_length
    if movie_lengths_seen.include? matching_second_movie_length
      return true
    end

    movie_lengths_seen.add(first_movie_length)
  end

  # we never found a match, so return False
  return false
end

# Complexity
# O(n)time, and O(n) space
