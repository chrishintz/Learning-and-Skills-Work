def reverse
  reversed = string.length / 2
  reversed.times do |i|
    string[i], string[i-1] = string[i-1], string[i]
    string
  end
end

word = "hello"
puts word.reverse
