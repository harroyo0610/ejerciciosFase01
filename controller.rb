require_relative 'view.rb'
require_relative 'model.rb'
require 'csv'

class Controller
	def initialize
		@model = Record.new
		@view = View.new
		@view.welcome_message
		input = gets.chomp
		menu_login(input)
	end

	def menu_login(input)
		if input == "1"
			login
		elsif input == "2"
			register
		elsif input == "3"
			exit
		else
			error_welcome_message											
		end
	end

	def login
		user = @view.login
		login_user = @model.login(user[0], user[1])
		@view.login_status_final(login_user)
		if login_user[3] == "administrador"
			administrador(login_user[1],login_user[2], login_user[3])
		elsif login_user[3] == "vendedor"
			vendedor(login_user[1],login_user[2], login_user[3])
		elsif login_user[3] == "cliente"
			cliente(login_user[1],login_user[2], login_user[3])
		end
	end

	def register
		user_array = @view.register
		user = User.new(user_array[0], user_array[1], user_array[2])
		@model.register(user)
	end

	def error_welcome_message
		@view.error_welcome_message
	end

	def exit
		@view.exit
	end

	def administrador(email, password, type)
		administrator = Administrador.new(email, password, type)
		administrador = AdministradorView.new
		user = administrador.welcome
		if user == "1"
			@view.exit
		elsif user == "2"
			products = administrator.index_products
			administrador.index_products(products)
		elsif user == "3"
			puts "create"
		elsif user == "4"
			users = administrator.index_users
			administrador.index_users(users)
		else
			@view.error_welcome_message			
		end
	end

	def vendedor(email, password, type)
		seller = Vendedor.new(email, password, type)
		vendedor = VendedorView.new
		user = vendedor.welcome
		user
		if user == "1"
			@view.exit
		elsif user == "2"
			done = vendedor.register_product
			product = Product.new(done[0], done[1], done[2], done[3])
			seller.register_product(product)
			vendedor.register_product_done
		elsif user == "3"
			products = seller.index
			delete_item = vendedor.delete_product(products)
			seller.delete_product(delete_item)
		elsif user == "4"
			products = seller.index
			modify_item = vendedor.modify_product(products)
			product_modify = Product.new(modify_item[1], modify_item[2], modify_item[3], modify_item[4])
			seller.modify_product(modify_item[0], product_modify)
			vendedor.modify_product_done
		else
			@view.error_welcome_message
		end
	end

	def cliente(email, password, type)
		client = Cliente.new(email, password, type)
		cliente = ClienteView.new
		user = cliente.welcome
		if user == "1"
			@view.exit
		elsif user == "2"
			products = client.index
			cliente.index(products)
		elsif user == "3"
			products = client.index
			item_selection = cliente.selection_welcome(products)
			client.buy(item_selection)
		else
			@view.error_welcome_message
		end
	end
end
Controller.new