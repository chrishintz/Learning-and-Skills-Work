# Your quirky boss found out that you're a programmer and has a weird request
# about something they've been wondering for a long time. Write a function that, given:
  # 1) an amount of money
  # 2) an array of coin denominations
# computes the number of ways to make amount of money with coints of the available denominations.

# Example: for amount = 4(4c) and denominations=[1,2,3], your program would output
# 4 = the number of ways to make 4c with those denominations.
  # 1) 1c, 1c, 1c, 1c
  # 2) 1c, 1c, 2c
  # 3) 1c, 3c
  # 4) 2c, 2c
class MakeChange
  def change_possibilities_bottom_up(amount, denominations)
    ways_of_doing_n_cents = [0] * (amount + 1)
    ways_of_doing_n_cents[0] = 1

    denominations.each do |coin|
      (coin...amount).each do |higher_amount|
        higher_amount_remainder = higher_amount - coin
        ways_of_doing_n_cents[higher_amount] += ways_of_doing_n_cents[higher_amount_remainder]
      end
    end

    return ways_of_doing_n_cents[amount]
  end
end
