
def table
  tabla = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
           ["Rodrigo Garcia", 13, "Masculino", "Primero", [9,9,7,6,8]],
           ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6,9,8,6,8]],
           ["Luis Perez", 13, "Masculino", "Primero", [8,7,7,9,8]],
           ["Ana Espinosa", 14, "Femenino", "Segundo", [9,9,6,8,8]],
           ["Pablo Moran", 11, "Masculino", "Segundo", [7,8,9,9,8]]]
  tabla[1..5].each do |n|
    new_array = []
    new_array2 = []
    tabla[0].each do |r|
       new_array << r
    end
    n.each do |m|
       new_array2 << m 
    end
    p Hash[new_array.zip(new_array2)]
  end
end
table
