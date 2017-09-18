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
			self.my_each{|n| result.push(n) if yield(n) == true}
			result
		else
			self.to_enum(:my_select)
		end
	end

	def my_all?
		if block_given?
			self.my_each {|n| return false if yield(n) == false}
			return true
		else
			self.my_each {|n| return false if n == nil || false}
			return true
		end
	end
# [nil, true, 99].all? #=> false
# [].all?              #=> true

  	def my_any?
    	if block_given?
    		self.my_each {|n| return true if yield(n) == true}
      		return false
    	else
      		return false if self.size == 0
      		self.my_each {|n| return true if n != nil || false}
        	return false
    	end
  	end
#[nil, true, 99].any?   #=> true
#[].any?                #=> false

	def my_none?
    	if block_given?
    		self.my_each {|n| return false if yield(n) == true}
      		return true
    	else
      		return true if self.size == 0
      		self.my_each {|n| return false if n != nil || false}
        	return true
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
			self.my_each {|n| counting += 1 if yield(n) == true}
    	else
    		if args.empty?
      			counting = self.size
      		else
      			target = args[0]
      			self.my_each {|n| counting += 1 if n == target}
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


