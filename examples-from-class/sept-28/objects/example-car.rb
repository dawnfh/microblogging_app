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
  def self.work
    puts "working"
  end
end

# this is where the action happens

mazda_car = Car.new
mazda_car.turn_on_engine
mazda_car.check_engine_light

Car.new.turn_on_engine # instance method call
Car.work # class method call