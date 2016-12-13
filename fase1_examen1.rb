# #Clase CreditCard

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

# def table(card)
#   puts "|   #{card.name}   |   #{card.number}   |   #{card.expiration}   |   #{card.cvc}   |   #{card.status}   |"
    
# end

# cards.each do |card|
#   table(card)
# end



#Athlete class
class Athlete
  attr_reader :total_distance, :total_time, :speed

  def initialize(distance = 0, time = 0)
    @distance, @time = distance, time 
    @speed = get_speed
  end

  #método para validar tiempo
  def total_time
    @total_distance += @distance
  end

  #método para hacer ejercicio
  def do_exercise(exercise)
    exercise
  end

  #método para obtener velocidad del atleta
  def get_speed
    if @time == 0
      @speed = 0
    else
      @speed = @distance / @time
    end
  end

end

#Runner class
class Runner < Athlete
attr_reader :run
end

#Swimmer class
class Swimmer < Athlete
attr_reader :swim
end

#Cyclist class
class Cyclist < Athlete
attr_reader :ride_bike
end



#tests

#instancias de atletas con distancia en metros
runner = Runner.new()
swimmer = Swimmer.new(50, 10)
cyclist = Cyclist.new(70, 27)
athletes = [runner, swimmer, cyclist]

athletes.each do |athlete|
  #¿qué tipo de atleta es?
  puts "#{athlete.class} responds to:"
  p athlete.speed
  puts "\tAthlete speed: #{athlete.respond_to?(:speed) == true}"
  puts "\tGet Athlete time: #{athlete.respond_to?(:total_time) == true}"
  puts "\tSet Athlete time: #{athlete.respond_to?(:total_time=) == true}"
  puts "\tSpeed record: #{athlete.respond_to?(:speed_record) == true}"
  puts "\tGet Distance: #{athlete.respond_to?(:total_distance) == true}"
  puts "\tSet Distance: #{athlete.respond_to?(:total_distance=) == true}"
  puts "\trun method: #{athlete.respond_to?(:run) == true}" if athlete == runner
  puts "\tswim method: #{athlete.respond_to?(:swim) == true}" if athlete == swimmer
  puts "\tride_bike method: #{athlete.respond_to?(:ride_bike) == true}" if athlete == cyclist
  puts "\n\n"
end