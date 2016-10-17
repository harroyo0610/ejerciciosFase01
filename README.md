# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
  encrypted_word = string.reverse.swapcase.gsub(/[aeio]/,"*") 
    return encrypted_word
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 

#metodo que separa por palabras el texto
def max_letter_frequency_per_word(sentence)
    numbers_larger_than(sentence.split)
end

#metodo que cuenta el numero de letras "e" de cada palabra
def words_longer_than(array,num)
  new_array = []
  array.map{ |w|
     new_array.push(w.count("e"))
  }
  letter_per_word(new_array, new_array.length)
end

#metodo que imprime el numero de letras "e" de la palabra con el mayor numero de letras "e"
def letter_per_word(array,letter)
  array.max
end

#metodo que selecciona las palabras que tienen mas de tre letras
def numbers_larger_than(num_array)
  new_array = []
  num_array.select{|word| 
    if word.length > 3
      new_array.push(word)
    end
    }
  words_longer_than(new_array, new_array.length)  
end

# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

puts max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
