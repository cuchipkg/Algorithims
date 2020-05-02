def quicksort(array, low, high)
	if low < high
		key = partition(array,low,high)#dung thuat toan partition de phan doan
		quicksort(array,low+1,high)
		quicksort(array,low,high-1)
	end
end
def partition(array,first,vpivot)
	pivot = array[vpivot]
	i = first
	high_number = first
	while i < vpivot
		if array[i] <= pivot
			temp = array[i]
			array[i] = array[high_number]
			array[high_number] = temp
			high_number += 1
		end
		i+= 1
	end
	temp = array[high_number]
	array[high_number] = array[i]
	array[i] = temp
end
mang = [3,4,5,1,6,7,9,8,2]
quicksort(mang,0,mang.size-1)
puts mang