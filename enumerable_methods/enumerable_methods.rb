module Enumerable
	def my_each
		if block_given?
			for element in self
		      yield(element)
		    end
		    self
		else
			self.to_enum(:my_each)
		end
	end

	def my_each_with_index
		if block_given?
			for i  in [0...self.size]
		      yield(self[i], i)
		    end
		    self
		else
			self.to_enum(:my_each_with_index)
		end
	end

	def my_select
		if block_given?
			result = []
			for i  in [0...self.size]
				if yield(self[i]) == true
					result.push(self[i])
				end
			end
			result
		else
			self.to_enum(:my_select)
		end
	end

	def my_all?
		if block_given?
			for i  in [0...self.size]
				if yield(self[i]) == false
					return false
				end
			end
			return true
		else
			for i  in [0...self.size]
				if self[i] == nil || false
					return false
				end
			end
			return true
		end
	end
# [nil, true, 99].all? #=> false
# [].all?              #=> true

  	def my_any?
    	if block_given?
      		for i  in [0...self.size]
        		if yield(self[i]) == true
          			return true
        		end
      		end
      		return false
    	else
      		if self.size == 0
        		return false
      		else
        		for i  in [0...self.size]
          			if self[i] != nil || false
            			return true
          			end
        		end
        		return false
      		end
    	end
  	end
#[nil, true, 99].any?   #=> true
#[].any?                #=> false

	def my_none?
    	if block_given?
      		for i  in [0...self.size]
        		if yield(self[i]) == true
          			return false
        		end
      		end
      		return true
    	else
      		if self.size == 0
        		return true
      		else
        		for i  in [0...self.size]
          			if self[i] != nil || false
            			return false
          			end
        		end
        		return true
      		end
    	end
	end
# %w{ant bear cat}.none? { |word| word.length == 5 } #=> true
# %w{ant bear cat}.none? { |word| word.length >= 4 } #=> false
# [].none?                                           #=> true
# [nil].none?                                        #=> true
# [nil, false].none?                                 #=> true
# [nil, false, true].none?                           #=> false

	def my_count(*args)
		counting = 0
		if block_given?
      		for i  in [0...self.size]
        		if yield(self[i]) == true
          			counting += 1
        		end
      		end
    	else
    		if args.empty?
      			counting = self.size
      		else
      			target = args[0]
	      		for i  in [0...self.size]
	        		if self[i] == target
	          			counting += 1
	        		end
	      		end
      		end
    	end
    	counting
	end

	def my_map
		result = []
		if block_given?
			self.my_each{|n| result << yield(n)}
      		result
      	else
			self.to_enum(:my_map)
		end
	end

	def my_inject
	end

	def my_map
	end

	def my_map
	end
end


def multiply_els(array)

end


