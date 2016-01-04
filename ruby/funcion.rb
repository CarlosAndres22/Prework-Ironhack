def say_hello
	puts "Hello!"
end
puts say_hello

"=========================="

def say_hello(name)
	puts "hello, #{name}"
end

say_hello("Rafa")
say_hello("Xavi")
say_hello("Isra")
"=========================="

def say_hello(name)
	puts "Hello, #{name}"
end

say_hello("James" + "Bond")
"=========================="
def add (a,b)
	puts a + b
end
add((5*5),(5+3))
"=========================="
def taste(food)
	if 
		food == "bacon"
		puts "Yummy!!! BACON"
	
elsif 
	food == "spinach"
	puts "Urgh..."
	
else
	puts "Can I have some bacon on the side?"
end
end
taste("spinach")
taste("bacon")
#RETURN VALUES
"=========================="
def square(number)
	number * number
end
puts square (4)

def multiply(a,b)
	a * b
end
 puts multiply(4,2)
 puts "=========================="
 def square(number)
  puts number * number
end

puts(square(4))

 puts "=========================="

def multiply(a, b)
  a * b
end

puts multiply(4, 2)

 puts "=========================="
 def add(a, b)
  calc1 = a + a   #CALC1
  calc2 = a + b
  calc3 = b + b
  return calc1, calc2, calc3
end

puts add(2, 4)
puts "=========================="

def square (num)
	sqr_num = num * num
	if sqr_num > 100
	return "Number too big!!"
end
sqr_num
end
puts square (9) 
puts "=========================="
String.try_convert("str")
my_string = String.new("Holaaaaa")
puts my_string.size