class Initials
  def initialize(name)
    @name = name
    @initials = []
  end

  def give_initials
    name_array = []
    name_array = @name.chars
    n = 0
    while n < name_array.length
      if name_array[n] == " "
        n += 1
      else
        @initials.push(name_array[n])
        n += 1
      end
    end
    @initials
  end
end
