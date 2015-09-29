def concat_for_murica(phrase)
	phrase << "Only In America!"
end

# Cheeseburgers exist: Only in America
puts concat_for_murica("Cheeseburgers exist: ")

def mad_max(numbas)
	max = 0

	numbas.each do |numba|
	 if numba > max
			max = numba
		end
	end

	max
end

# 9000
puts mad_max([9000, -3, 45])


def arrays_to_hash(keys, values)
	hash = {}
	i = 0

	keys.each do |key|
		hash[key] = values[i]
		i = i + 1
	end

	hash
end

puts arrays_to_hash([:I, :she, :your], ["like food", "does too", "move sailor"])