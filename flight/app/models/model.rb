class Flight < ActiveRecord::Base
 
end

class User < ActiveRecord::Base
  validates :name, length:{minimum: 6}
  validates :password, length: { in: 6..20 }
end

# class Booking
# end

# class UserBooking
# end

# class UserFlight
# end