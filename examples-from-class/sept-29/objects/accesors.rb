class Car
  attr_accessor :brand
  attr_accessor :wheels
end

car = Car.new
car.brand = "toyota"
car.wheels = 2
puts car