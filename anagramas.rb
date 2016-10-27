def are_anagrams?(word_1, word_2)
    if canonical(word_1) == canonical(word_2)
      true
    else
      false
    end
      
end
def canonical(word)
  p new_word = word.split("").sort
end

p are_anagrams?("amor","mora")
p are_anagrams?("amor","moras")

def anagrams_for(word, array)
  new_array = []
  new_word = word.split("").sort
  array.each {|i|
    array_split = i.split("").sort
    if new_word != array_split
    else
      new_array << i
    end
  }
  p new_array
end

anagrams_for("oscar",["arcos", "nestor", "rita", "caros","craso", "hola", "rocas", "blba", "rosca", "rosco"])
