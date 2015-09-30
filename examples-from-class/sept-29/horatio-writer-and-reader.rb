# definition phase of Horatio class
class Horatio
  attr_reader :balloons
  attr_writer :balloons
end

# instantiation/creation phase of Horatio object
horatio = Horatio.new

 # this sets the balloons instance variable equal to "large balloons"
horatio.balloons = "large ballons"

# this displays the balloons instance variable
puts horatio.balloons