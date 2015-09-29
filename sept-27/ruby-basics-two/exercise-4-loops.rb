def add_five(operand)
	operand + 5
end

puts add_five(10) # 15

def multiply_by_five(operand)
	operand * 5
end

puts multiply_by_five(5) # 25

def add_together(arg1, arg2, arg3, arg4)
	arg1 + arg2 + arg3 + arg4
end

puts add_together(3,2,3,4) # 12

def print_10_times(arg)
	i = 0
	while i < 10
		puts arg
		i = i + 1
	end
end

print_10_times(20)
# 20
# 20
# 20
# 20
# 20
# 20
# 20
# 20
# 20
# 20
