bool = true

if bool == false # this is equivalent to if bool != true
  puts "(if) bool is false" # because bool is false, this puts will not be invoked
end

if bool != false # this is equivalent to if bool == true
  puts "(if) bool is true" # because bool is true, this puts will be invoked
end

# the keyword unless is equivalent to if not
unless bool == true # this is equivalent to if bool != true
  # therefore if you trace the logic here
  #   you will find that because bool is true, this statement will not be invoked
  puts "(unless) it is false"
end