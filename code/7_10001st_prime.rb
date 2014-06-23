# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'prime'


def prime_number_order(num)
	primes = Prime.first(num)
	primes.last
end

# def prime_number_order(num)
# 	primes = []
# 	num = 2
# 	while primes.size < num
# 		if num %

# 		primes << 5
# 	end
# end



p prime_number_order(6) == 13 #=> true
p prime_number_order(10001) == 104743 #=> true
