example = [[6],[3,5],[7,9,1],[4,6,8,4]]

#================view-array==============
def view_array(example)
	for i in 0...example.length
		p example[i]
	end
end
#=========================================

#==========sum=============
def array_sum(example)
	i = 0
	j = 0
	sum = example[i][j]

	size_i = example.length - 1
	
	while size_i > 0
		
		if (example[i + 1][j] > example[i + 1][j +1])
			sum = sum + example[i + 1][j]
		
		else
			sum = sum + example[i + 1][j +1]
			j += 1
		end

		i += 1
		size_i -= 1
	end
	return sum
end
#=========================================

#===========test=========================
 def validate_multi_array_sum(example,result_test)

   if array_sum(example) == result_test
     puts "Ok!!"
   else
     puts "[Error] Desired value: #{result_test} == generated #{array_sum(example)}"
   end
 end
#=========================================


#view tringle
puts "=====/\\======"
view_array(example) 
puts "=============="

#array sum
puts "Result"
p array_sum(example)
puts "=============="


#test
puts "Test"
result_test=23
validate_multi_array_sum(example,result_test)
puts "=============="