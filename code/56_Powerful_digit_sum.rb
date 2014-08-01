# A googol (10^100) is a massive number: one followed by one-hundred zeros;
# 100^100 is almost unimaginably large: one followed by two-hundred zeros. 
# Despite their size, the sum of the digits in each number is only 1.

# Considering natural numbers of the form, ab, where a, b < 100, 
# what is the maximum digital sum?

def digit_sum(a,b)
	sums = []
	num = a**b
	arr = num.to_s.split('')
	num_arr = arr.map{|n| n.to_i}
	sums << num_arr.reduce(:+)
	p sums.max
end

def all_nums(a,b)
	a_nums = (1..a).to_a
	b_nums = (1..b).to_a
	a_nums.each do |anum|
		b_nums.each do |bnum|
			digit_sum(anum, bnum)
		end
	end
end

# p digit_sum(99,98)
all_nums(99,99)