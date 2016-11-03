class Board
# You should put here the given boards templates
@@tablero = ["POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
# @@boards_templates =  
  def initialize
     complete_board!
  end

  def to_s
    @@tablero.each do |value_tablero|
      new_array = []
      @tablero_horizontal = ""
      chars_count = 0
      board_splited = value_tablero.split("")
      board_splited.each do |elemento_tablero|
        if chars_count == 4
          if elemento_tablero == "X"
            l_rand = complete_board!
            new_chr = l_rand.to_s
            printf "#{new_chr}\n"
            horizontal_table(new_chr)
          else
            new_chr = elemento_tablero.to_s
            printf "#{new_chr}\n"
            horizontal_table(new_chr)
          end
          chars_count = 0
        else
          if elemento_tablero == "X"
            l_rand = complete_board!
            new_chr = l_rand.to_s
            printf "#{new_chr}"
            horizontal_table(new_chr)
          else
            new_chr = elemento_tablero.to_s
            printf "#{new_chr}"
            horizontal_table(new_chr)
          end
          chars_count +=1
        end  
      end
                                                                                                                                             p @tablero_horizontal
        p horizontal_table_reverse
        p vertical_table
        p vertical_table_reverse
        arreglo_5
        diagonal_1
        diagonal_2
        diagonal_3
        diagonal_4
       #p arreglo_5
    end
  end

  private

  def complete_board!
    (0...1).map { ('A'..'Z').to_a[rand(26)] }.join       
  end

  def horizontal_table(new_chr)  
     @tablero_horizontal = @tablero_horizontal +  new_chr   
  end

  def horizontal_table_reverse  
     tablero_horizontal_reverse = @tablero_horizontal.reverse   
  end

  def vertical_table
    tablero_vertical = @tablero_horizontal.split("").to_a
    tablero_vertical2 = []
    @tablero_vertical_final = []
    tablero_vertical.each_slice(5){ |a| tablero_vertical2 << a}
      for row_tablero in 0..tablero_vertical2.length-1 
         for each_element in 0..7
           @tablero_vertical_final << tablero_vertical2[each_element][row_tablero]
         end
      end 
    @tablero_vertical_final = @tablero_vertical_final.join  
  end

  def diagonal_1
    contador_x = 0
    contador_y = 0
    new_array = []
    new_array2 = []
    new_array3 = [[0, 5], [1, 5], [0, 6], [2, 5], [1, 6], [0, 7], [8, 0], [3, 5], [2, 6], [1, 7], [0, 8], [9, 0], [8, 1], [4, 5], [3, 6], [2, 7], [1, 8],[0, 9], [10, 0], [9, 1], [8, 2], [5, 5], [4, 6], [3, 7], [2, 8], [1, 9], [0, 10], [11, 0], [10, 1], [9, 2], [8, 3], [6, 5], [5, 6], [4, 7], [3, 8], [2, 9], [1, 10], [0, 11]]
    #Ejecuta las lineas diagonales
    #x= imprime las x
    #este ciclo crea las posiciones del arreglo en diagonal
    for w in 0..11
      for x in contador_x.downto(0) 
        contador_y = contador_x
        new_array << x
      end
      for y in 0..contador_y
        new_array2 << y
        contador_y += 1
      end
      contador_x += 1
    end 

    new_array = new_array.zip(new_array2)

     # este ciclo elimina las posciciones vacias en el arreglo
     new_array.each do |value1|
      new_array3.each do |value2|
        new_array.delete_if{|v| v == value2}  
      end
     end

     @array_diagonal = []
     new_array.each do |value|
       @array_diagonal << @array_5[value[0]][value[1]]
     end
     p @array_diagonal = @array_diagonal.join
  end

  def diagonal_2
    @array_diagonal.reverse    
  end
  def diagonal_3
    contador_x = 0
    contador_y = 4
    contador_w = 4
    contador_4 = 4 
    new_array = []
    new_array2 = []
    new_array3 = [[0, -1], [0, -2], [1, -1], [0, -3], [1, -2], [2, -1], [0, -4], [1, -3], [2, -2], [3, -1], [8, 4], [0, -5], [1, -4], [2, -3], [3, -2], [4, -1], [8, 3], [9, 4], [0, -6], [1, -5], [2, -4], [3, -3], [4, -2], [5, -1], [8, 2], [9, 3], [10, 4], [0, -7], [1, -6], [2, -5], [3, -4], [4, -3], [5, -2], [6, -1], [8, 1], [9, 2], [10, 3], [11, 4]]
    #Ejecuta las lineas diagonales
    #x= imprime las x
    #este ciclo crea las posiciones del arreglo en diagonal
    for w in 0..11
      for x in 0..contador_x
        contador_y = contador_x
        new_array << x
      end
      for y in 4.downto(contador_w)
        cont = contador_4
        new_array2 << cont - y + 4
        contador_y -= 1
      end
      contador_4 -= 1
      contador_w -=1
      contador_x += 1
    end 

    new_array = new_array.zip(new_array2)

     # este ciclo elimina las posciciones vacias en el arreglo
     new_array.each do |value1|
      new_array3.each do |value2|
        new_array.delete_if{|v| v == value2}  
      end
     end


     @array_diagonal_2 = []
     new_array.each do |value|
       @array_diagonal_2 << @array_5[value[0]][value[1]]
     end
     p @array_diagonal_2 = @array_diagonal_2.join
  end
  def diagonal_4
    @array_diagonal_2.reverse    
  end

  #Arregla de 5 de 5 elementos el arreglo original
  def arreglo_5
    cada_5 = @tablero_horizontal.split("").to_a
    @array_5 = []
    new_array = []
    count_element = 0
    cada_5.length
    for value in 0..cada_5.length
      if count_element == 4
        new_array << cada_5[value]
        @array_5 << new_array
        new_array = []
        count_element = 0
      else
        new_array << cada_5[value]
        count_element += 1
      end
    end
    @array_5
  end

  #Crea tablero vertiical reverseado
  def vertical_table_reverse
    @tablero_vertical_final.reverse
  end

  def include?
    
  end
end

board = Board.new
board.to_s
