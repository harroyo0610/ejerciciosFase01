class Flight < ActiveRecord::Base
 
end

class User < ActiveRecord::Base

  # validates :name, length:{minimum: 6}
  # validates :password, length: { in: 6..20 }
  # def available_seats
  #   validates :passengers, :numericality => { :greater_than => 0}  
  # end 
end

class Booking < ActiveRecord::Base
  #validates :passengers, :numericality => { :greater_than => 0}
end

class UserBooking < ActiveRecord::Base
end

class UserFlight < ActiveRecord::Base
end