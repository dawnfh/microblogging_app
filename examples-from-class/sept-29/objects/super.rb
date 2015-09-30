# still a work in progress for the time being

class Animal
end

class Lion < Animal
end

class Giraffe < Animal
end

class Tiger < Animal
end

class Zoo
  def exhibits
    [Lion.new, Giraffe.new, Tiger.new]
  end

  def exhibits=()

  end
end

zoo = Zoo.new
zoo.exhibits = "some exhibit"
puts zoo.exhibits