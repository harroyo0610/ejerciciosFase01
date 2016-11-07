class Employee
  def initialize
    @name = name
    @email = email
    @salary = salary
    @deposit_account = deposit_account    
  end
  attr_accessor :name, :email, :salary, :deposit_account
  def to_s
    deposit_account.gsub!(/\w{5}/, "******")
    "#{name} <email: #{email}> acct: #{deposit_account}"
  end
  
end

employee = Employee.new()
employee.name = "Juan Perez"
employee.email = "juan@gmail.com"
employee.deposit_account = "123456512"
p employee
puts employee
