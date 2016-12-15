#Clase CreditCard

# class CreditCard
#   attr_accessor :name, :number, :expiration, :cvc, :status
#   def initialize(name, number, expiration, cvc, status)
#     @name, @number, @expiration, @cvc, @status = name, number, expiration, cvc, status
#   end
# end

# #Cinco instancias de CreditCard

# card_1 = CreditCard.new("Amex", 2345673444, "12/15", 2345, [234, 567, 456, 567, 344])
# card_2 = CreditCard.new("ScotiaBank", 2345673744, "12/16", 2845, [234, 345, 456, 567, 344])
# card_3 = CreditCard.new("Bancomer", 2345673444, "12/15", 2645, [234, 345, 456, 567, 344])
# card_4 = CreditCard.new("Serfin", 2345473454, "12/20", 1345, [234, 567, 456, 567, 344])
# card_5 = CreditCard.new("BanCoppel", 2345373464, "12/18", 2445, [567, 345, 456, 567, 344])

# #Array con cinco objetos de tarjetas de crédito
# cards = [card_1, card_2, card_3, card_4, card_5]

# #tests 
# cards.each do |card|
#    puts "#{card.name} responds to:"
#    puts "\tName: #{card.respond_to?(:name) == true}"
#    puts "\tNumber: #{card.respond_to?(:number) == true}"
#    puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
#    puts "\tcvc: #{card.respond_to?(:cvc) == true}"
#    puts "\tGet status: #{card.respond_to?(:status) == true}"
#    puts "\tSet status: #{card.respond_to?(:status=) == true}"
#    puts "\n\n"
# end
# name = "Name".center(15)
# number = "Number".center(15)
# expiration = "Expiration".center(15)
# cvc = "Cvc".center(15)
# status = "Status".center(25)
# puts "|#{name}|#{number}|#{expiration}|#{cvc}|#{status}|"
# puts " _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ".center(25)

# def table(card)
#   name = card.name.center(15)
#   number = card.number.to_s.center(15)
#   expiration = card.expiration.center(15)
#   cvc = card.cvc.to_s.center(15)
#   status = card.status.to_s.center(15)
#   puts "|#{name}|#{number}|#{expiration}|#{cvc}|#{status}|"
    
# end

# cards.each do |card|
#   table(card)
# end



# #Athlete class
# class Athlete
#   attr_accessor :total_distance, :total_time, :speed

#   def initialize(distance = 0, time = 0)
#     @distance, @time = distance, time 
#     @speed = get_speed
#     @total_distance = @distance
#     @total_time = @time
#   end

#   #método para validar tiempo
#   def total_time
#     @total_distance = @distance
#   end

#   #método para hacer ejercicio
#   def do_exercise(exercise)
#     exercise
#   end

#   #método para obtener velocidad del atleta
#   def get_speed
#     if @time == 0
#       @speed = 0
#     else
#       @speed = @distance.to_f / @time.to_f
#     end
#   end

# end

# #Runner class
# class Runner < Athlete
# attr_accessor :run
#   def run
#     "Ran #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed.round(2)} m/s"
#   end
#   def new_workout(distance, time)
#     self.total_distance = distance
#     self.total_time = time
#     self.speed = distance.to_f/time.to_f
#   end
# end

# #Swimmer class
# class Swimmer < Athlete
# attr_accessor :swim
#    def swim
#     "Swam #{@total_distance} meters, time: #{@total_time} seconds, speed: #{@speed.round(2)} m/s"
#   end
# end

# #Cyclist class
# class Cyclist < Athlete
# attr_accessor :ride_bike
# end



# #tests

# #instancias de atletas con distancia en metros
# runner = Runner.new()
# swimmer = Swimmer.new(50, 10)
# cyclist = Cyclist.new(70, 27)
# athletes = [runner, swimmer, cyclist]

# athletes.each do |athlete|
#   #¿qué tipo de atleta es?
#   puts "#{athlete.class} responds to:"
#   puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
#   puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
#   puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
#   #puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
#   puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
#   puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
#   puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
#   puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
#   puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
#   puts "\n\n"
# end

# #test for runner

# #test para runner con distancia = 0
# p runner.run == "Ran 0 meters, time: 0 seconds, speed: 0.0 m/s"
# #test para runner al hacer ejercicio, incrementa distancia = 20 metros y tiempo = 7 segundos
# runner.new_workout(20, 7) 
# #test para runner con distancia = 20 metros y tiempo = 7 segundos
# p runner.run == "Ran 20 meters, time: 7 seconds, speed: 2.86 m/s"

# #test para swimmer con distancia = 50
# p swimmer.swim == "Swam 50 meters, time: 10 seconds, speed: 5.0 m/s"




class RaceCar
  attr_accessor :car_name, :lap_time, :average
  def initialize(car_name, lap_time)
    @car_name, @lap_time = car_name, lap_time
  end

  #método para obtener velocidad promedio
  def average_speed
    lap_distance = 100
    amount = 0
    @lap_time.each do |lap|
      speed = lap_distance.to_f / lap.to_f 
      amount = amount + speed
    end
    @average = amount / @lap_time.count
    @average = @average.round(2)
  end

  #método que muestra nivel de cada race car
  def level_car
    if average_speed > 6
      "Avanzado"
    elsif average_speed > 5
      "Medio"
    elsif average_speed > 4
      "Normal"
    else
      "Principiante"
    end
  end
end

class Team

  def initialize(team)
    @team = team
  end

  #método para calcular promedio de velocidad del equipo
  def average_speed_of_team
    amount = 0
    @team.each do |car|
      amount = amount + car.average
    end
    average_cars = amount / @team.count
    "El promedio es #{average_cars}"
  end
end


#método para buscar race car
def search(search_car, cars)
  message = ""
  cars.each do |car|
    if search_car == "#{car.car_name}"
       message = "#{car.car_name} is a racer"
    end
  end
  message
end

#método para generar la tabla
def table_generator(team)
  show_information
  team.each  do |car|
    n = car.car_name.center(15)
    l = car.level_car.center(15)
    puts "#{n} |#{l}"
  end
end

#método para mostrar nombre y nivel del race car
def show_information
  n = "Name".center(15)
  l = "Nivel".center(15)
  puts "#{n} |#{l}"
  puts "_______________________________"
end


#instancias de RaceCar
car1 = RaceCar.new("Force", [25,20,15,10,50])
car2 = RaceCar.new("Power", [35,25,5,30,40])
car3 = RaceCar.new("Passwater", [15,10,65,45,50])
car4 = RaceCar.new("Banjo", [20,10,65,35,25])
car5 = RaceCar.new("Duck", [40,39,17,20,15])
car6 = RaceCar.new("McQQueen", [50,17,5,52,43])

# p car1.level_car
# p car2.level_car
# p car3.level_car
# p car4.level_car
# p car5.level_car 
# p car6.level_car

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s"
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5]
team_one = Team.new(team1)
#test para buscar race car en equipo team_one
p search("Power", team1) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 


table_generator(team1)
