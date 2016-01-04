
class Car
  def initialize(color)
    @color = color
  end

  def honk
    puts "Beeeeeeeeep!"
  end

  def print_color
    puts @color
  end
end

my_car = Car.new "red"
other_car = Car.new "grey"

my_car.print_color
other_car.print_color
my_car.honk
puts "=========================="

