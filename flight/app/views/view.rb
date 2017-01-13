class View
	def welcome
    puts "Bienvenido a vuelos Codea"
    puts "--------------------------"
    puts "1) Reservaciones\n2) Administrador\n3) Salir\nSelecciona opcion"
    option = gets.chomp
  end
  
	def index
	end

  def create
  end

  def delete
  end

  def update
  end

  def exit
    puts "Te saliste de la plataforma"
  end

	def error
    puts "ERROR... Opcion no disponible"
	end
end

class ViewAdministrator
  def login
    puts "Bienvenido Administrador"
    puts "--------------------------------"
    puts "Ingrese usuario:"
    user = gets.chomp
    puts "Ingrese password:"
    password = gets.chomp
    data_user = [user, password]
  end

  def welcome_admin
    puts "Bienvenido Administrador"
    puts "--------------------------------"
    puts "1)Muestra todos los vuelos\n2)Muestra todas las reservaciones\n3)Crea un nuevo vuelo\n4)Salir"
    option = gets.chomp
  end
end
