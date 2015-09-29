class Horatio
  attr_reader :balloons
  attr_writer :balloons
end

horatio = Horatio.new
horatio.balloons = "large ballons"
puts horatio.balloons