require_relative 'app'

# def assert(truthy)
#   raise "Tests failed" unless truthy
# end

Chef.find(1)
Meal.find(1)
Chef.all
Meal.all
chef = Chef.create(first_name: "Ariel", last_name: "Lopez", email:"ariel@gmail.com", phone:"930-028-2908 x7555",birthday:Time.now)
meal = Meal.create(name: "Hamburguesa", chef_id: 4)
meal.save
chef.save

p Chef.where(chef[:first_name] == "Ariel")

puts "finished"
