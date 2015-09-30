# definition phase of Dinosaur class

class Dinosaur
  # the initialize method is invoked whenever you
  #   create a new instance of an object (when you instantiate an object)
  def initialize
    @legs = 2
    puts @legs
  end
end

# this should display an empty line in the terminal
#   because the @legs instance variable cannot be accessed outside
#   of the class definition
puts @legs

# create the object (another word for create is instantiate)
dino = Dinosaur.new

# this displays the Dinosaur instance in the terminal
puts dino