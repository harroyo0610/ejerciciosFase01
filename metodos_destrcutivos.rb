# name = "Fernando"

# puts "Valor de name: #{name}"

# puts "Llamando al método reverse en name : #{name.reverse}"

# puts "Valor de name despues de pasarlo por reverse: #{name}"

# puts "Llamando al método reverse! en name : #{name.reverse!}"

# puts "Valor de name después de pasarlo por reverse!: #{name}"

def name(text)
  puts "Valor de name: #{text}"

  puts "Llamando al método split en name : #{text.upcase}"

  puts "Valor de name despues de pasarlo por split: #{text}"

  puts "Llamando al método split! en name : #{text.upcase!}"

  puts "Valor de name después de pasarlo por split!: #{text}"
end

name("humberto")
