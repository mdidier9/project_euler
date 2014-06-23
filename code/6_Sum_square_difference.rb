# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385

# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is,
# 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def sum_square_dif(num)
	num_arr = (1..num).to_a
	sum_squares = num_arr.inject{|sum, n| sum+(n**2)}
	square_sum = num_arr.inject{|sum, n| sum+n} ** 2
	square_sum - sum_squares
end


p sum_square_dif(10) == 2640  #=> true?
p sum_square_dif(100) == 25164150  #=> true
