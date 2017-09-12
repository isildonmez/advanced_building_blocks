def bubble_sort (array)
	(array.length - 1).downto(1) do |limit|
		for n in (0...limit)
			if array[n] > array[n+1]
				array[n], array[n+1] = array[n+1], array[n]
			end
		end
	end
	array
end


puts bubble_sort([4,3,78,2,0,2]).inspect
# => [0, 2, 2, 3, 4, 78]