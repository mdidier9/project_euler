# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def largest_prime(num)
	factor = 2
	while factor < num do
		if num % factor == 0
			num = num/factor
		else 
			factor += 1
		end
	end
	num
end

p largest_prime(13195) == 29
p largest_prime(600851475143) == 6857