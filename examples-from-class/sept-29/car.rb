# this is where the class is defined

class Car
  # instance method
  def turn_on_engine
    puts "turning on engine"
  end

  # instance method
  def check_engine_light
    puts "checking engine light"
  end

  # class method
  def self.work # the self here is a ruby keyword
    puts "working"
  end
end

# this is where the action happens (object creation/instantiation)
mazda_car = Car.new

mazda_car.turn_on_engine # this invokes the instance method turn_on_engine
mazda_car.check_engine_light # this invokes the instance method check_engine_light

Car.new.turn_on_engine # instance method invocation
Car.work # class method invocation