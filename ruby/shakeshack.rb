	# class that add each ingredient per shake
class Ingredient 
	
	attr_reader :name, :price
	def initialize(name, price)
		@name=name
		@price=price
    end
end


#Creates a milkshake and det the price

class MilkShake
  
  def initialize
      @base_price = 3
      @ingredients = [ ]        
  end

  def add_ingredient(ingredient)
  	  @ingredients.push(ingredient)
  end

  def price_of_milkshake
	  #Let's establish what our counter should be before we start adding ingredients into the mix
	  @total_price_of_milkshake = @base_price
	  #Add each ingredients price to our total
	  @ingredients.each do |ingredient|     
	  @total_price_of_milkshake += ingredient.price  
	  # puts "Testing where it comes from: "+ ingredient.price.to_s
    end
  #return  our total price to whoever called for it
     @total_price_of_milkshake
   end
 end

 # Creates a list of several chakes and total price.
 class Shake_shop

 	attr_reader :name, :price
 	
 	def initialize
 		@milkshakes= [ ]
 	end

 	def add_milkshake(milkshakes)
 		@milkshakes.push(milkshakes)
    end

    def checkout_milkshakes
    	@total_price=0
    	@milkshakes.each do |milkshakes|
    		@total_price += milkshakes.price_of_milkshake
        end
        
        @total_price
    end
 end

# Nizar's order:

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

# Karin's order: 

karins_milkshake=MilkShake.new
vanilla=Ingredient.new("vanilla",1)
strawberry=Ingredient.new("strawberry",3)
chocolate=Ingredient.new("chocolate",2)
karins_milkshake.add_ingredient(strawberry)
karins_milkshake.add_ingredient(vanilla)
karins_milkshake.add_ingredient(chocolate)


# Order list: 

list_milkshake=Shake_shop.new    #Creates an empty order list
list_milkshake.add_milkshake(nizars_milkshake)
list_milkshake.add_milkshake(karins_milkshake)

puts "The total price of chakes is: #{list_milkshake.checkout_milkshakes} dollars."
