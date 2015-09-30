# a recursive function is a function that invokes itself
def count_down(count)
  puts "count = #{count}" # this displays the current count
  # in this line we are invoking the count_down function
  #   within its own definition
  # notice how we pass in the current count minus 1 unless the count equals 0
  count_down(count - 1) unless count == 0
end

# this invokes the count_down function and passes
#   in an Integer argument with the value of 100
count_down(100)