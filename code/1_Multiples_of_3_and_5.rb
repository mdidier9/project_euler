# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def multiples_of_3_or_5(max_num)
	sum = 0
	(1...max_num).each do |num|
		if num % 3 == 0 || num % 5 == 0
			sum += num
		end
	end
	return sum
end

p multiples_of_3_or_5(1000) == 233168 #=> true
