def pentagonal(n)
	array = []
	1.upto(n) do |i|
		array << i*(3*i-1)/2
	end
	p array
end

def check(n)
	array_1 = pentagonal(n)
	array_2 = pentagonal(n)
	array_1.each do |num_1|
		array_2.each do |num_2|
			new_num_1 = (num_2 - num_1).abs
			new_num_2 = (num_2 + num_1)
			x = array_1.include?(new_num_1)
			y = array_1.include?(new_num_2)
			if x && y
				puts true
				puts (new_num_2-new_num_1).abs
			end
		end
	end
end




pentagonal(2200)