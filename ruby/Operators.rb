 puts 1 == 1 && 1 > 2  #falso
puts   1 == 1 && 3 > 2	
puts  1 == 1 || 1 > 2
 puts  1 == 1 || 3 > 2
  puts  1 == "one" || 1 > 2
 

 puts "Holaaaa"
puts 1!=2
puts true == !false

# CONDICIONALES IF

puts "What is your favorite animal?"
animal=gets.chomp
if animal == "Dog"
puts "You like dogs. Woof!"
end

puts "What is your favorite color?"
color=gets.chomp
if color == "blue"
	puts " I like color blue"
elsif color == "black"
	puts "black is not a color"
end
puts "_____________________________"

puts "What is your favorite animal?"
animal = gets.chomp.downcase
if animal == "dog"
  print "You like dogs. Woof!"
elsif animal == "cat"
  print "You like cats. Meow"
else 
  print "You don’t like cats or dogs? Okay."

end