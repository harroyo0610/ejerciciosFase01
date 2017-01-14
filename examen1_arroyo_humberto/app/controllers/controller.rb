class Controller 
  def initialize(args)
    @view = View.new
    option_selected = @view.welcome
    menu(option_selected)
  end

  def menu(args)
    case args
    when "1"
      @user = UserUser.new
    when "2"
      @admin = Administrator.new
    when "3"
      @view.exit
    else
      @view.error          
    end
  end

  class Administrator
    def initialize
      welcome_admin
    end

    def welcome_admin
      @view_admin = ViewAdministrator.new
      @view_admin.login
      option = @view_admin.welcome_admin
      menu_admin(option)
      while option != "4"
        option = @view_admin.welcome_admin
        menu_admin(option)
      end
    end

    def menu_admin(option)
        case option
        when "1"
          show_flights
        when "2"
          show_bookings
        when "3"
          create_flight
        when "4"
          @view_admin.exit      
        end
    end

    def show_flights
      Flight.all.each_with_index do |t, i|
        @view_admin.show_flights(i+1, t.num_flight, t.date, t.depart, t.from, t.to, t.duration, t.cost, t.passengers)
      end
    end

    def show_bookings
      Booking.all.each_with_index do |t, i|
        @view_admin.show_bookings(i+1, t)
      end
    end

    def create_flight
      flight_created = @view_admin.create_flight
      Flight.create(num_flight: flight_created[0], date: flight_created[1], depart: flight_created[2], from: flight_created[3], to: flight_created[4], duration: flight_created[5], cost: flight_created[6], passengers: flight_created[7])
    end

  end

  class UserUser 
    def initialize 
      welcome_user      
    end

    def welcome_user
      @view_user = ViewUser.new
      option = @view_user.reserv_menu
      menu_user(option)
    end

    def menu_user(option)
      case option
      when "1"
        watch_flights
      when "2"
        @view_user.exit
      else
        @view.error 
      end
    end

    def watch_flights
      user_flight = @view_user.watch_flights
      flights = Flight.where(from: user_flight[0], to: user_flight[1], date: user_flight[2]).where("passengers > ?", user_flight[3])
      #Flight.where("passengers > ?", 5)
      select_flight(flights, user_flight[3].to_i)
    end

    def select_flight(flights, passengers_number)
      flights.all.each do |t|
        if t.passengers > passengers_number
        flight_selected = @view_user.select_flight(flights)
        selected_flight(flight_selected[0], passengers_number, flight_selected[1])
        end
      end
      # if flights.passengers > passengers_number
      #   flight_selected = @view_user.select_flight(flights)
      #   selected_flight(flight_selected[0], passengers_number, flight_selected[1])
      # else
      #   @view_user.error
      # end
    end

    def selected_flight(num_flight, passengers_number, flights)
      Flight.all.each_with_index do |t, i|
        if flights == t.num_flight
          booking_selected = Booking.new(num_flight: t.num_flight, date: t.date, depart: t.depart, from: t.from, to: t.to, duration: t.duration, cost: t.cost)
          @view_user.flight_reserv(booking_selected)
          info_passengers(t.cost, passengers_number, booking_selected)
        end
      end
    end

    def info_passengers(cost, num_passengers, booking_selected)
      for i in 1..num_passengers
        data_user = @view_user.info_passengers(i)
        name = data_user[0]
        email = data_user[1]
        User.create(name: name, email: email, admin: false)
      end
      confirm_tickets(cost, booking_selected, num_passengers)
    end


    def confirm_tickets(cost, booking_selected, num_passengers)
      if @view_user.confirm == "si"
        total = cost * num_passengers
        buy(booking_selected, total, num_passengers)
      else
        @view_user.exit
      end
    end

    def buy(booking_selected, total, num_passengers)
      numero_vuelo = ""
      total_pass = 0
      Flight.all.each do |t|
        if t.num_flight == booking_selected.num_flight
          numero_vuelo = t.num_flight
          total_pass = t.passengers - num_passengers
        end
      end

      @view_user.buy(total)
      b = Booking.create(num_flight: booking_selected.num_flight, date: booking_selected.date, depart: booking_selected.depart, from: booking_selected.from, to: booking_selected.to, duration: booking_selected.duration, cost: booking_selected.cost)
      UserBooking.create(user: booking_selected.id, booking: b.id)
        booking = Flight.find_by(num_flight: numero_vuelo)
        booking.update_attributes(passengers: total_pass)
        #p Booking.all   
    end
  end
end
