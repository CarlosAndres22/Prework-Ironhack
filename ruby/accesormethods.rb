# METODO DE ACCESO, no puede ser accedido por una variable fuera de el END
class Car
  attr_accessor :color

  def initialize(color)
    @color = color
  end

  def honk
    puts "Beeeeeeeeep!"
  end
end

my_car = Car.new "yellow"
other_car = Car.new "brown"

my_car.color = "grey"

puts my_car.color
puts other_car.color

#INHERITANCE
puts "=========================="
class Animal
  def initialize(name)
    @name = name
  end

  def describe
    puts "This animal's name is #{@name}"
  end
end


class Dog < Animal
end

class Cat < Animal
end

class Human < Animal
  def initialize(name, salary)
    super(name)
    @salary = salary
  end

  def describe_with_salary
    puts "This human's name is #{@name} and its salary is #{@salary}"
  end
end

dog = Dog.new "Winston Furchill"
cat = Cat.new "David Meowie"
human = Human.new "Johnny Appleseed", 12000

dog.describe
cat.describe
human.describe
human.describe_with_salary