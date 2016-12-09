class View
	def welcome_message
		puts "Bienvenido a Online Store:\nElige la opcion deseada:\n1)Login \n2)Register\n3)Exit"
	end

	def login
		puts "Introduce tu email: "
		email = gets.chomp
		puts "Introduce tu password: "
		password = gets.chomp
		user_array = [email, password]
		user_array
	end

	def login_status_final(status)
		p status[0]
	end

	def register
		puts "Introduce tu email: "
		email = gets.chomp
		puts "Introduce tu password: "
		password = gets.chomp
		puts "Introduce tu tipo de usuario:\n1)Administrador\n2)Vendedor\n3)Cliente"
		type = gets.chomp
		if type == "1"
			puts "Bienvenido, te registraste como administrador"
			type = "administrador"
		elsif type == "2"
			puts "Bienvenido, te registraste como vendedor"
			type = "vendedor"
		elsif type == "3"
			puts "Bienvenido, te registraste como cliente"
			type = "cliente"
		else
			puts "Error, intenta de nuevo"						
		end
		user_array = [email, password, type]
		user_array
	end

	def exit
		puts "Te haz salido de la plataforma"
	end

	def error_welcome_message
		puts "La opcion elegida es incorrecta"
	end
end

class AdministradorView
	def welcome
		puts "Bienvenido Administrador, Elige una de las siguientes opciones:\n1)Logout\n2)Ordenar producto\n3)Create?\n4)Ordenar usuarios"
		option_user = gets.chomp
		option_user
	end

	def index_products(products)
    products.each do |product|
      num = products.index(product) + 1
        puts "#{num}.#{product.name}" 
    end
  end

  def index_users(users)
    users.each do |user|
      num = users.index(user) + 1
        puts "#{num}.#{user.email}" 
    end
  end
end

class VendedorView
	def welcome
			puts "Bienvenido Vendedor, Elige una de las siguientes opciones:\n1)Logout\n2)Registrar un producto\n3)Borrar un producto\n4)Modificar un producto"
			option_user = gets.chomp
			option_user	
	end

	def register_product
		puts "Escribe el nombre del producto: "
		product_name = gets.chomp
		puts "Escribe la descripcion del producto: "
		description = gets.chomp
		puts "Escribe el precio del producto: "
		price = gets.chomp
		puts "Escribe cuantos productos va a meter: "
		products = gets.chomp
		products = products.to_i
		array_product = [product_name, description, price, products]
	end

	def register_product_done
		puts "Usted ha registrado su producto exitosamente"
	end

	def index(products)
    products.each do |product|
      num = products.index(product) + 1
        puts "#{num}.#{product.name}" 
    end
  end

	def delete_product(products)
		index(products)
		puts "Escribe el numero de producto que desea eliminar: "
		delete_item = gets.chomp
		delete_item
	end

	def modify_product(products)
		index(products)
		puts "Escribe el numero del producto que desea modificar:"
		modify_item = gets.chomp
		puts "El producto que vas modificar es:\nNombre: #{products[modify_item.to_i-1].name}\nDescripción: #{products[modify_item.to_i-1].description}\nPrecio: #{products[modify_item.to_i-1].price}\nNumero de piezas: #{products[modify_item.to_i-1].number}"
		puts "Escribe el nombre del producto: "
		product_name = gets.chomp
		puts "Escribe la descripcion del producto: "
		description = gets.chomp
		puts "Escribe el precio del producto: "
		price = gets.chomp
		puts "Escribe cuantos productos va a meter: "
		products = gets.chomp
		products = products.to_i
		array_product = [modify_item, product_name, description, price, products]
		array_product
	end

	def modify_product_done
		puts "Usted ha modificado su producto exitosamente"
	end	
end

class ClienteView
	def welcome
		puts "Bienvenido Cliente, Elige una de las siguientes opciones:\n1)Logout\n2)Ordenar productos\n3)Seleccionar productos para comprar"
		option_user = gets.chomp
		option_user
	end

	def index(products)
    products.each do |product|
      num = products.index(product) + 1
      puts "#{num}.[ ]#{product.name}" 
  	end
  end
  def selection_welcome(products)
  	index(products)
  	puts "Elige el producto que desea mandar al carrito. SI ELIGES VARIOS SEPARALOS POR COMAS (,)"
  	selection = gets.chomp
  	selection = selection.split(",")
  	selection
  end
end