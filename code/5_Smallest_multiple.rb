# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


def smallest_multiple(max)
	current_num = 1
	solved = false
	while solved == false do
		(1..max).each do |num|
			if current_num % num != 0
				current_num += 1
				solved = false
				break
			end #if no remainder
			solved = true
		end #each
	end # while
	return current_num
end

p smallest_multiple(10) == 2520 #=> true
p smallest_multiple(20) == 232792560 #=> true (although very slow)
