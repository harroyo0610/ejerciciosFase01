require 'benchmark'
include Benchmark         # we need the CAPTION and FORMAT constants


def fibonacci_iterative(number)
    n1 = 0
    n2 = 1
    if number > 1    
      for i in 2..number
        fib = n2 + n1
        n1 = n2
        n2 = fib
      end
    elsif number == 1
      fib = 1
    else
      fib = 0
    end
    fib
end
def fibonacci_recursive(number)

  if number > 1    
    fib = fibonacci_recursive(number-1) + fibonacci_recursive(number-2)
  elsif number == 1
    fib = 1
  else
    fib = 0
  end
  fib
  n = 50000
Benchmark.bm do |x|
  x.report { for i in 1..n; a = "1"; end }
  x.report { n.times do   ; a = "1"; end }
  x.report { 1.upto(n) do ; a = "1"; end }
end
end
fibonacci_iterative(5)
 p fibonacci_iterative(0) == 0
 p fibonacci_iterative(1) == 1
 p fibonacci_iterative(2) == 1
 p fibonacci_iterative(3) == 2
 p fibonacci_iterative(4) == 3
 p fibonacci_iterative(5) == 5

 p fibonacci_recursive(0) == 0
 p fibonacci_recursive(1) == 1
 p fibonacci_recursive(2) == 1
 p fibonacci_recursive(3) == 2
 p fibonacci_recursive(4) == 3
 p fibonacci_recursive(5) == 5

