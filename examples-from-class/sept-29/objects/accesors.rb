# definition phase

class Car
  # here we are defining two attributes
  # attr_accessor defines a setter and getter method
  # in this case we are defining getter and setter methods for
  #   brand and wheels

  attr_accessor :brand # a combination of attr_reader and attr_writer
  attr_accessor :wheels # a combination of attr_reader and attr_writer
end

# invocation phase

car = Car.new
car.brand = "toyota" # this setter method corresponds to the brand attribute
car.wheels = 2 # this setter method corresponds to the wheels attribute
puts car