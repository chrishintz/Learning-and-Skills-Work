def payment(rate, balance, term)
  r = rate / 1200
  numerator = r * balance

  denominator = 1 - (1 + r)**-term

  payment = (numerator / denominator)
  return payment
end

def future_balance(rate, balance, term, number_of_payments)
  pmt = payment(rate, balance, term)
  r = rate / 1200
  numerator = (1 + r)**number_of_payments - 1
  denominator = r
  future_balance = balance * (1 + r)**number_of_payments - (pmt * (numerator / denominator))
  return future_balance
end
