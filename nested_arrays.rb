# def ajedrez
#   tablero = [["Torre-A", "Caballo-A", "Alfil-A", "Reina-A", "Rey-A", "Alfil-A", "Caballo-A","Torre-A"],
#              ["Peon-A", "Peon-A", "Peon-A", "Peon-A", "Peon-A", "Peon-A", "Peon-A", "Peon-A"],
#              ["", "", "", "", "", "", "", ""],
#              ["", "", "", "", "", "", "", ""],
#              ["", "", "", "", "", "", "", ""],
#              ["", "", "", "", "", "", "", ""],
#              ["Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B", "Peon-B"],
#              ["Torre-B", "Caballo-B", "Alfil-B", "Reina-B", "Rey-B", "Alfil-B", "Caballo-B","Torre-B"]]  
# end
def table
  tabla = [["Nombre", "Edad", "Genero", "Grupo", "Calificaciones"],
           ["Rodrigo Garcia", 13, "Masculino", "Primero", [9,9,7,6,8]],
           ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6,9,8,6,8]],
           ["Luis Perez", 13, "Masculino", "Primero", [8,7,7,9,8]],
           ["Ana Espinosa", 14, "Femenino", "Segundo", [9,9,6,8,8]],
           ["Pablo Moran", 11, "Masculino", "Segundo", [7,8,9,9,8]]]
end
p table[0][4]  == "Calificaciones"
p table[2][1]  == 12
p table[2][2]  == "Femenino"
p table[3][3]  == "Primero"
p table[3][4]  == [8, 7, 7, 9, 8]
p table[4][4][2]  == 6

def ajedrez2
  tablero = [] 
  fichas = ["torre", "caballo", "alfil", "reina", "rey", "peon"] 
  for i in 1..8
    new_array = []
    if i == 1 || i == 8
      if i == 8
        linea_nueva = []
        for x in 1..8
          case x
            when 1, 8
              linea_nueva << fichas[0] + "-B"
            when 2, 7
              linea_nueva << fichas[1] + "-B" 
            when 3, 6
              linea_nueva << fichas[2] + "-B" 
            when 4
              linea_nueva << fichas[3] + "-B" 
            when 5
              linea_nueva << fichas[4] + "-B"                      
          end         
        end
        tablero << linea_nueva
      else
        linea_nueva = []
        for x in 1..8
          case x
            when 1, 8
              linea_nueva << fichas[0] + "-A"
            when 2, 7
              linea_nueva << fichas[1] + "-A" 
            when 3, 6
              linea_nueva << fichas[2] + "-A" 
            when 4
              linea_nueva << fichas[3] + "-A" 
            when 5
              linea_nueva << fichas[4] + "-A"                      
          end         
        end
        tablero << linea_nueva
      end
    elsif i == 2 || i == 7
      if i == 7
        linea_nueva = []
        for i in 1..8
          linea_nueva << fichas[5] + "-B"
        end
        tablero << linea_nueva
      else
        linea_nueva = []
        for i in 1..8
          linea_nueva << fichas[5] + "-A"
        end
        tablero << linea_nueva
      end
    else
      linea_nueva = []
      for i in 1..8
        linea_nueva << " " 
      end
      tablero << linea_nueva
    end
    
  end
  tablero.each do |i|
    p i
  end
end
ajedrez2






