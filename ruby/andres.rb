puts  "Hello world"
# This is a comment

my_variable=10
my_other_variable="ten"

operation_result=12*34
puts "Operation result is"
puts operation_result

#COMMENT
a_string="This is a String"
another_string='This is also a string'
multiline_string="""
A long time ago in a galaxy far,far, away...
It is a period of civil war. Rebel
spaceships striking...
"""

puts "Hello\nworld"

puts "What's your name?"
name=gets.chomp
puts "Hello #{name}"

puts "Where are you from?"
country=gets.chomp
puts "I don't know where #{country} is"


puts "Give me a number"
first_number=gets.chomp.to_i
puts "Give me another number"
second_number=gets.chomp.to_i
puts"#{first_number} x #{second_number} = #{first_number*second_number}"