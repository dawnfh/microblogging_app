# these are examples of attributes
# these methods give you read/write access to instance variables

class Car
  attr_reader :my_variable
  attr_writer :my_variable # attr
  attr_accessor :my_variable # attr_reader and attr_writer
  
  # setter method (write access)

  def engine=(e)
    return @my_variable = e
  end

  # getter method (read access)

  def engine
    return @my_variable
  end
end

mazda_car = Car.new
mazda_car.my_variable = "something" # this is the same as the next line
mazda_car.my_variable=("something") # this line and above are the same

# puts @engine
puts mazda_car.my_variable