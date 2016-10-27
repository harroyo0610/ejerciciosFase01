
#retorna un array spliteado
def pig_latin(text)
  text.split(" ")
end

#evalua y vuelve a splitear palabra
def word_new(text)
  #retornar un array spliteado de la palabra
  new_word = pig_latin(text)
  new_word.each do |x|
    if x[0]=~/[aeiou]/
      start_with_vowel(x)
    else
      start_with_consonant(x)
    end 
  end 
end

def start_with_vowel(x)
  merge_words(x + "way")
end

def start_with_consonant(x)
  cont = 0
  new_array = []
  x.split.each do |i|
    while x[cont]=~/\A[b-df-hj-np-tv-z]/
      new_array << x[cont]
      cont +=1
    end
    merge_words(x.sub!(new_array.join,"") + new_array.join + "ay")
  end 
end

def merge_words(word)
  new_array = []
  new_array << word
  print word + " "
end

# pig_latin("pig")
# pig_latin("banana")
# pig_latin("trash")
# pig_latin("happy")
# pig_latin("duck")
# pig_latin("glove")
# pig_latin("egg")
word_new("hola señor humberto arroyo cisneros")
#pig_latin("i")
