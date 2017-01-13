class Controller 
  def initialize(args)
    @view = View.new
    option_selected = @view.welcome
    menu(option_selected)
  end

  def menu(args)
    case args
    when "1"
      puts "Reservaciones"
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
      data_user = @view_admin.login
      option = @view_admin.welcome_admin
      menu_admin(option)
    end

    def menu_admin(option)
      case option
      when "1"
        show_flights
      when "2"
        show_reserv
      when "3"
        create_flight
      when "4"
        @view.exit
      else
        @view.error      
      end
    end

    def show_flights
      
    end

    def show_reserv
      
    end

    def create_fligth
      
    end

  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
  end

  def add
  
  end

  def delete
  end

  def complete
  end
end
