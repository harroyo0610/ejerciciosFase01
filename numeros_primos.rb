def prime_factors(number)
  new_array = []
  divisor = 2
  while (number != divisor)
    if number % divisor == 0
      number = number / divisor
      new_array << divisor
    else
      divisor += 1
    end
  end
  new_array << number
  p new_array
end
prime_factors(4) #=> [2, 2]
prime_factors(9) #=> [3, 3]
prime_factors(12) #=> [2, 2, 3]
prime_factors(34) #=> [2, 17]
