module Enumerable
	def my_each
		for i  in [0...self.size]
	      yield(self[i])
	    end
	    self
	end

	def my_each_with_index
		for i  in [0...self.size]
	      yield(self[i], i)
	    end
	    self
	end

	def my_select
		result = []
		for i  in [0...self.size]
			if yield(self[i]) == true
				result.push(self[i])
			end
		end
		result
	end

	def my_all?
		if block_given?
		end
	end
# [nil, true, 99].all? #=> false
# [].all?              #=> true

	def my_any?
		if block_given?
		end
	end
#[nil, true, 99].any?   #=> true
#[].any?                #=> false

	def my_none?
	end

	def my_count
	end

	def my_map
	end

	def my_inject
	end

	def multiply_els
	end

	def my_map
	end
end