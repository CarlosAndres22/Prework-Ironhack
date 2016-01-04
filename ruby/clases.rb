class Car
  def honk #METODO
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new  #INSTANCIA
my_car.honk  #LLAMANDO EL METODO
puts my_car.class  #Metodo CLASS es definir que clase es
puts "cosa".class
puts 4.class
puts "======================================"
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