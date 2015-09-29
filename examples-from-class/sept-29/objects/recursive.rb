def count_down(count)
  puts "count = #{count}"
  count_down(count - 1) unless count == 0
end

count_down(100)