# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def largest_palindrome(digit)
	min = ("1"+"0"*(digit-1)).to_i
	max =  ("9"*digit).to_i
	all_palindromes = []
	list_a = (min..max).to_a
	list_b = (min..max).to_a
	
	list_a.each do |num_a|
		list_b.each do |num_b|
			product = num_a * num_b
			if product.to_s == product.to_s.reverse
				all_palindromes << product.to_i
			end
		end
	end
	all_palindromes.max
end

p largest_palindrome(2) == 9009 #=> true (91 x 99)
p largest_palindrome(3) == 906609 #=> true