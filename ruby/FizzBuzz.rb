 1.upto(100) do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      else
        puts i
      end
  end

  puts "====================================="
    # SI EL NUMERO COMIENZA CON UNO
     1.upto(100) do |i|
      if i.to_s[0] == "1"
       	puts "Bang"
      elsif i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
       
      else
        puts i
      end
  end
puts "====================================="
  for current_iteration_number in 1..100 do
   puts "Hello world, this is number #{current_iteration_number}"
end

puts "====================================="
#EACH
 (1..100).each{|i|
      x = ''
      x += 'Fizz' if i%3==0
      x += 'Buzz' if i%5==0
      puts(x.empty? ? i : x);
    }
puts "====================================="
#interation 4
puts "holaaaaa"
 1.upto(100) do |i|
   result = ""  
  
   if i % 3 == 0
  result << "Fizz"
  end
  if i % 5 == 0
  result << "Buzz"

end
 if result==""
 	puts i 
 else
 	puts result
 end


      
  end
