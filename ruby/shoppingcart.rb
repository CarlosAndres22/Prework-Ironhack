class ShoppingCart
	def initialize
		@items = [] 
	end

	def grab_item(item)
		@items.push(item)
	end

	def check_out
		total = 0
		@items.each do | item |
			total = total + item.price
		end
		if @items.length > 5
			total - (total * 0.10)
		else
			total
		end
	end
end

class Item
	def initialize(name, price)
		@name = name
		@price = price
	end

	def price
		@price
	end
end

class Fruit < Item
	def price
		tomorrow = Time.new(2015, 10, 17)
		if tomorrow.saturday? || Time.now.sunday?
			@price - (@price * 0.10)
		else
			@price
		end
	end
end

class HouseWare < Item
	def price
		if @price > 100
			@price - (@price * 0.05)
		else 
			@price
		end
	end
end

rice = Item.new("Rice", 1)
anchovy = Item.new("Anchovy", 2)
orange_juice = Item.new("Orange Juice", 10)
vacuum = HouseWare.new("Vaccuum", 150)
french_press = HouseWare.new("French Press", 30)
banana = Fruit.new("Banana", 10)



joshs_cart = ShoppingCart.new
joshs_cart.grab_item(rice)
joshs_cart.grab_item(anchovy)
joshs_cart.grab_item(vacuum)
joshs_cart.grab_item(banana)


puts "Your total today is: $#{joshs_cart.check_out}"