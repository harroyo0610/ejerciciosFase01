class Product
	attr_accessor :name, :description, :price, :number
	def initialize(name, description, price, number)
		@name, @description, @price, @number = name, description, price, number
	end
end
class User
	attr_reader :email, :password, :type
	def initialize(email, password, type)
		@email = email
		@password = password
		@type = type
	end
end

class Administrador < User
	def index_products
		new_products = []
		CSV.foreach("productos.csv") do |product|
			 new_products << Product.new(product[0], product[1], product[2], product[3])
		end
		new_products
	end

	def create
		
	end

	def index_users
		new_products = []
		CSV.foreach("online_store.csv") do |user|
			 new_products << User.new(user[0], user[1], user[2])
		end
		new_products
	end
end

class Vendedor < User
	def register_product(product)
		CSV.open("productos.csv", "a+") do |csv|
  			csv << [product.name, product.description, product.price, product.number]
		end
	end

	def index
		new_products = []
		CSV.foreach("productos.csv") do |product|
			 new_products << Product.new(product[0], product[1], product[2], product[3])
		end
		new_products
	end

	def delete_product(delete_item)
		delete_item = delete_item.to_i
		array_products = index
		new_array_products = []
		contador = 1
		CSV.open("productos.csv", "wb") do |csv|
			array_products.each do |product|
				if delete_item == contador
					contador +=1
				else
					csv << [product.name, product.description, product.price, product.number]
					contador +=1
				end

			end
		end
	end

	def modify_product(number_modify, product_modify)
		number_modify = number_modify.to_i
		array_products = index
		new_array_products = []
		contador = 1
		CSV.open("productos.csv", "wb") do |csv|
			array_products.each do |product|
				if number_modify == contador
					csv << [product_modify.name, product_modify.description, product_modify.price, product_modify.number]
					contador +=1
				else
					csv << [product.name, product.description, product.price, product.number]
					contador +=1
				end
			end
		end
	end
end

class Cliente < User
	def index
		new_products = []
		CSV.foreach("productos.csv") do |product|
			 new_products << Product.new(product[0], product[1], product[2], product[3])
		end
		new_products
	end

	def buy(products)
		item_products = []
		array_products = []
		products.each do |product|
			item_products << product.to_i
		end
		contador = 1
		CSV.foreach("productos.csv") do |product|
			if item_products.include?(contador)
				if product[3].to_i == 1
					contador += 1
				else
					product[3] = product[3].to_i - 1
					array_products << Product.new(product[0], product[1], product[2], product[3])
					contador += 1
				end 
			else
				product[3] = product[3].to_i - 1
				array_products << Product.new(product[0], product[1], product[2], product[3])
				contador += 1
			end
		end
		CSV.open("productos.csv", "wb") do |csv|
			array_products.each do |product|
  			csv << [product.name, product.description, product.price, product.number]
			end
		end
	end
end

class Record
	def login(email, password)
		check_email = false
		check_account = false
		CSV.foreach("online_store.csv") do |mail|
			if mail[0] == email && mail[1] == password
				check_account = "Bienvenido a Online Store"
				return check_account, mail[0], mail[1],mail[2]
				Vendedor.new()
			elsif mail[0] == email
				check_email = "Su contraseña es incorrecta", ""
				return check_email
			end
		end
		if check_account == false
			check_account = "La cuenta que ingreso no existe", ""
			return check_account
		end
	end
	def register(user)
		CSV.open("online_store.csv", "a+") do |csv|
  			csv << [user.email, user.password, user.type]
		end
	end
end