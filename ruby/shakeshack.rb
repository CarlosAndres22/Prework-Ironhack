class ShakeShop
	def initialize
		#When we make a new shake shop we don't have any milkshakes on the ticket yet
		@list_of_shakes = []
	end

	def add_shake(shake)
		#Lets create a method to add milkshakes to our list
		@list_of_shakes.push(shake)
	end

	def checkout
		#Now lets total the prices of all the milkshakes on our "ticket"
	  	@total_of_all_shakes = 0
		@list_of_shakes.each do | shake |
			@total_of_all_shakes += shake.price_of_milkshake
		end
		return @total_of_all_shakes
	end
end

class MilkShake
	#What are some attributes about a milkshake that we need to consider?
	#What is a milk shake made of, and how is it's price calculated?
	def initialize
		@base_price = 3
		@ingredients = []
	end
	#Lets make a method to add ingredients to our milkshake
	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end
	#Uh oh, we have all of these ingredients, but how do we calculate the price based on what we've added?
	def price_of_milkshake
		#Let's establish what our counter should be before we start adding ingredients into the mix
		@total_price_of_milkshake = @base_price
		#Add each ingredient's price to our total
		@ingredients.each do |ingredient|
			@total_price_of_milkshake += ingredient.price
		end
		#Send back our total price to whoever called for it
		return @total_price_of_milkshake
	end

end

class Ingredient
	#Cool, so we have an ingredient with a name and a price, but we can't do anything with it from the outside...how do we solve this?
	attr_reader :name, :price
	#What attributes does an ingredient have? Whats important for us?
	def initialize(name, price)
		@name = name
		@price = price
	end
end

#Lets make our list of ingredients with different names and prices, and store them in a variable so we can add them to our shakes later
banana = Ingredient.new("Banana", 1)
mint = Ingredient.new("Mint", 2)
chocolate_chips = Ingredient.new("chocolate_chips", 3)
gold_specks = Ingredient.new("Gold Specks", 35)
#Our two instructors need their own individual milkshakes...Nizar doesn't like sharing his milkshakes after all...
nizars_milkshake = MilkShake.new
fernandos_milkshake = MilkShake.new
#Nizar happens to like a mean banana chocolate chip shake, with a fancy extra ingredient...
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.add_ingredient(gold_specks)
#Fernando prefers the same, but fancies flavor over style, so he'll have mint.
fernandos_milkshake.add_ingredient(banana)
fernandos_milkshake.add_ingredient(chocolate_chips)
fernandos_milkshake.add_ingredient(mint)
#Ok, we have the prices of each individual milkshake and everything for Nizar and Fernando...so what's our shakeshop for? Lets get a total
puts nizars_milkshake.price_of_milkshake
puts fernandos_milkshake.price_of_milkshake
#Guess who just opened up a brand new shake shop in Miami, that happens to cater to hard working Ironhack teachers?
joshs_shakes = ShakeShop.new
#So lets add our two new shakes to the ticket at Josh's shake shop...but what good is that if we can't check out?
joshs_shakes.add_shake(fernandos_milkshake)
joshs_shakes.add_shake(nizars_milkshake)
#Lets tally up our total and send our instructors back to Ironhack with their tasty new milkshakes.
puts joshs_shakes.checkout