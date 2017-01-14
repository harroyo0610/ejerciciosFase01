# Este archivo sirve para crear registros de prueba
flight_1 = Flight.create(num_flight: 0001, date: "2017-01-20", depart: "11:17:16", from: "Cancun", to: "CDMX", duration: "1:00:00", cost: 1000.00, passengers: 15)

flight_2 = Flight.create(num_flight: 0002, date: "2017-01-21", depart: "11:17:17", from: "CDMX", to: "Monterrey", duration: "2:30:00", cost: 750.00, passengers: 15)

flight_3 = Flight.create(num_flight: 0003, date: "2017-01-21", depart: "11:17:18", from: "Guadalajara", to: "CDMX", duration: "1:30:00", cost: 500.00, passengers: 10)

flight_4 = Flight.create(num_flight: 0004, date: "2017-01-22", depart: "11:17:19", from: "CDMX", to: "Guadalajara", duration: "1:30:00", cost: 500.00, passengers: 5)

flight_5 = Flight.create(num_flight: 0005, date: "2017-01-22", depart: "11:17:20", from: "Monterrey", to: "CDMX", duration: "2:30:00", cost: 750.00, passengers: 20)

flight_6 = Flight.create(num_flight: 0010, date: "2017-01-20", depart: "11:17:17", from: "Cancun", to: "CDMX", duration: "1:00:00", cost: 1020.00, passengers: 2)

user_1 = User.create(name: "Humberto Arroyo", email: "humberto@gmail.com", admin: true)
