def linear_search(number, array)
  new_array = []
  for i in 1..array.length
    if array[i] == number
      puts new_array << i
    end
  end
  if new_array.empty?
    p nil
  end
end
def global_linear_search(char,array)
  new_array = []
  for i in 0..array.length
    if char == array[i]
      new_array << i
    end
  end
  new_array
end
random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]

linear_search(20, random_numbers)
# => 3
linear_search(50, random_numbers)
# => nil

arr = "entretenerse".split('')

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]
p global_linear_search("u", arr)
