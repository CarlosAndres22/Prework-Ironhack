my_var="This is a variable"
movie = "Finding Nemo"
puts "My favourite movie is #{movie}"
name="mr. Bond"
capitalized_name = name.capitalize
puts "Hello #{capitalized_name}"

# SPLIT

flavours =  " chocolate,  mint, strawberry, vanilla, caramel, chili"
flavours_array = flavours.split(", ")
puts flavours_array

puts "holaaaaa".length
puts "awesome".include? "you"
phrase = "Just kidding, you're awesome too"
puts phrase.include? "aw"
age = 28
cats = 5
age.odd?
age.even?
puts age.round(-1)
puts age.round(1)
puts age.round(0)
puts age.round(2)
puts age.round(-2)

3.times {puts "beetlejuice"}
animals =["lions","tigers","bears"]
puts animals
numbers=["one",2,"Three"]
puts numbers[0] #will put One
puts numbers[1] #will put 2
#METHODS FOR ARRAYS

my_array = []
my_array << "A"
my_array.push "B"
my_array.push "C"

puts my_array
my_array.delete_at 2   # BORRAR ELEMENTO DEL ARRAY
puts my_array
puts "------------------------------"
#examples
puts [4,6,2,4,7,12,9,12].sort  #ORGANIZA EL ARRAY
puts ["g","e","n","w","a"].sort
puts "------------------------------"
puts ["chocolate","mint","strawberry","vanilla","caramel","chili"].join #UNE TODO
puts ["chocolate","mint","strawberry","vanilla","caramel","chili"].join(", ")
puts "------------------------------"

my_hash = {}

my_hash["AST"] = "Asturias"  #HASHES
my_hash["GAL"] = "Galicia"

puts my_hash["AST"]
puts my_hash["GAL"]

puts my_hash

puts "------------------------------"
puts my_hash.has_key?("AST") # TIENE EL VALOR TAL
puts my_hash.has_key?("CAT")
puts my_hash.has_value?("Galicia")
puts my_hash.select { |key, value| key.include?("G") } # ou pass it a block of code with certain condition(s), and it will return a new hash with the key-value
puts "------------------------------"

puts "what is this?".class
puts 3.class
puts [1,2,3].class

