require "csv"
require 'faker'

class Person
  attr_reader :first_name, :last_name, :pokemon
  def initialize(first_name, last_name, pokemon)
    @first_name, @last_name, @pokemon = first_name, last_name, pokemon
  end
  def print_people
    "Name: #{@first_name} #{@last_name} and your favorite pokemon is #{@pokemon}"
  end
end 

class PersonWriter

  def initialize(file_name,people)
    @file_name = file_name
    @people = people
  end

  def create_csv
    CSV.open(@file_name, "wb") do |csv|
      @people.each do |value|
        csv << [value.first_name, value.last_name, value.pokemon]
      end
    end
  end
end
def replace(file, replaced, replacer)
  #new_array = []
    CSV.foreach(file) do |row|
      #new_array << row
      if row.include?(replaced)
        row.each do |value|
          p value.inspect
          if replaced == value
            "#{value} sera remplazada por #{replacer}"
            value.replace(replacer)
          end
        end
      end
    end
   
end

def people(num)
  persons = []
  for i in 1..num
    persons << Person.new(Faker::Name.first_name, Faker::Name.last_name, Faker::Pokemon.name)
  end
  PersonWriter.new("file.csv", persons).create_csv
end

class PersonParser
  def initialize(file)
    @file = file
  end
  def people
    CSV.foreach(@file) do |row|
      Person.new(row[0], row[1], row[2]).print_people
    end
  end
end

# people(10)
# parser = PersonParser.new("file.csv")
# people = parser.people
replace("file.csv", "Raichu", "Tito")








