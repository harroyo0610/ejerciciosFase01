def factorial_interactive(number)
  suma = 1
  for i in 1..number
    suma *= i
  end
  suma
end

def factorial_recursive(number)
  if number == 0
    factorial = 1
  else
    factorial = number * factorial_recursive(number-1) 
  end
  factorial
end

p factorial_recursive(1)
p factorial_recursive(3)
p factorial_recursive(5)
p factorial_recursive(7)
p factorial_recursive(10)
p factorial_recursive(15)


p factorial_interactive(1)
p factorial_interactive(3)
p factorial_interactive(5)
p factorial_interactive(7)
p factorial_interactive(10)
p factorial_interactive(15)
