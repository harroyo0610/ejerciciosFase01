class View
	def welcome
    puts "Bienvenido a vuelos Codea"
    puts "--------------------------"
    puts "1) Reservaciones\n2) Administrador\n3) Salir\nSelecciona opcion"
    option = gets.chomp
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

  def show_flights(index, num_flight, date, depart, from, to, duration, cost, passengers)

    puts "#{index}) No Vuelo: #{num_flight}\nDate: #{date}, Depart: #{depart} UTC From: #{from}, To: #{to}\nDuration: #{duration}, Cost:#{cost}, Passengers: #{passengers}"
  end

  def show_bookings(index, t)
    puts "#{index}) No Vuelo: #{t.num_flight}\nDate: #{t.date}, Depart: #{t.depart} UTC From: #{t.from}, To: #{t.to}\nDuration: #{t.duration}, Cost:#{t.cost}"
    
  end

  def exit
    puts "Te saliste de la plataforma"
  end

  def create_flight
    puts "Number Flight:"
    num_flight = gets.chomp
    puts "Date Ejem: '2017-10-25':"
    date = gets.chomp
    puts "Depart Ej: '11:17:19'"
    depart = gets.chomp
    puts "From:"
    from = gets.chomp
    puts "To:"
    to = gets.chomp
    puts "Duration Ej: '1:30:00'"
    duration = gets.chomp
    puts "Cost:"
    cost = gets.chomp
    puts "Passengers:"
    passengers = gets.chomp
     puts "No Vuelo: #{num_flight}\nDate: #{date}, Depart: #{depart} UTC From: #{from}, To: #{to}\nDuration: #{duration}, Cost:#{cost}, Passengers: #{passengers}"
    flight_created = [num_flight, date, depart, from, to, duration, cost, passengers]
  end

end


class ViewUser
  def reserv_menu
    puts "Bienvenido!!!!!!"
    puts "--------------------------------"
    puts "1)Encuentra tu boleto de avion\n2)Salir\nSelecciona una opcion:"
    option = gets.chomp
  end

  def exit
    puts "Te saliste de la plataforma"
  end

  def error
    puts "No hay asientos disponible"
  end

  def watch_flights
    puts "Encuentra tu vuelo"
    puts "--------------------------------"
    puts "From:"
    from = gets.chomp
    puts "To:"
    to = gets.chomp
    puts "Date:"
    date = gets.chomp
    puts "Passengers:"
    passengers = gets.chomp
    user_flight = [from, to, date, passengers]
  end

  def select_flight(flights)
    num = ""
    flights.each_with_index do |t, i|
      puts "#{i+1}) No Vuelo: #{t.num_flight}\nDate: #{t.date}, Depart: #{t.depart} UTC From: #{t.from}, To: #{t.to}\nDuration: #{t.duration}, Cost:#{t.cost}, Passengers: #{t.passengers}"
      num = t.num_flight
    end
    puts "Selecciona tu vuelo:"
    number_flight = gets.chomp
    data = [number_flight, num]
  end

  def flight_reserv(data)
    puts "Numero de vuelo seleccionado: #{data.num_flight}\n Date: #{data.date}, Depart: #{data.depart}\nFrom: #{data.from}, To: #{data.to}, Duration:#{data.duration} , Precio: #{data.cost}"   
  end

  def info_passengers(index)
    puts "Datos de persona: #{index}:"
    puts "Ingresa tu nombre:"
    name = gets.chomp
    puts "Email:"
    email = gets.chomp
    data_user = [name, email]  
  end

  def confirm
    puts "Realizar reservacion? si/no"
    des = gets.chomp
  end

  def buy(price_tickets)
    puts "Reservacion completa"
    puts "*******************************"
    puts "El costo total es de: $ #{price_tickets}"
  end
end
