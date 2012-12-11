class Operation 

  def Operation.add(p,q)
	
		if p.is_a?(Integer) && q.is_a?(Integer)
			result = p +q 
		elsif p.is_a?(String) && q.is_a?(String)
			result = p.concat(q)
		end			
   
  end

	puts "Enter a number or a string"
	p = gets
	puts "Enter another number or a string"
	q = gets
	if (p.to_i != 0 && q.to_i != 0)
		result = Operation.add p.to_i,q.to_i
	elsif p.to_i == 0 && q.to_i == 0
		result = Operation.add p,q
	else
			raise TypeError, 'You must enter number or string!!!'
	end

	puts "Result is #{result}"

  end
