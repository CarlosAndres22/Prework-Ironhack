
#FOR
numbers = [1,2,3]
for element in numbers
	puts "-> #{element}"
end

#WHILE    while is a construct that runs a chunk of code while a given condition is true.

#WHILE

string = "cavernammmmmmmm"
#While the string's length is less than 10
while string.length < 10
	# add an 'a'
	string+= 'a'
end
puts "The final string is #{string}"

#ITERATING ARRAYS
numbers = ["one",2,"three"]

numbers.each do |item|
	puts "--> #{item}"
end

# RECORRER HASH
my_hash = {}
my_hash["AST"] = "Asturias"
my_hash["GAL"] = "Galicia"
my_hash["CAT"] = "Catalunya"

my_hash.each do |key,value|
  puts "#{key} stands for #{value}"
end