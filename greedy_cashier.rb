class Change
  def initialize(amount)
    @remaining = (amount * 100).round(0)
    @coins = 0
  end

  def least_amount_of_coins
      # 100
      while @remaining > 0
        if @remaining > 24
          @remaining = @remaining - 25
          @coins += 1
        elsif @remaining > 9
          @remaining = @remaining - 10
          @coins += 1
        elsif @remaining >4
          @remaining = @remaining - 5
          @coins += 1
        else
          @remaining = @remaining - 1
          @coins += 1
        end
      end
      @coins
  end
end
