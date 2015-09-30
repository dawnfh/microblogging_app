# these are examples of attributes
# these methods give you read/write access to instance variables

class Car
  attr_reader :my_variable # shorthand for getter method
  attr_writer :my_variable # shorthand for setter method
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

# these next two lines invoke the setter method named engine=
mazda_car.engine = "something" # this the same as the next line
mazda_car.engine=("something") # this line and above are the same

puts mazda_car.engine # this invokes getter method named engine