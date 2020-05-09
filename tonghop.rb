def _quicksort(array, low, high)
	if low < high
		key = _partition(array,low,high)
		_quicksort(array,low+1,high)
		_quicksort(array,low,high-1)
	end
end
def _partition(array,first,vpivot)
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
def _create_array(array,value_array)
	i = 0
	until i == value_array
		printf "nhap gia tri mang %d\n",i
		insert_value = gets.chomp.to_i
		array.push(insert_value)
		i += 1
	end
end
def _binary_search(array,left,right,vsearch)
	mid = left+right/2
	f_left = left
	f_right = right
	search = vsearch
	if search == array[mid]
		printf "Gia Tri %d nam tai vi tri %d\n",search,mid+1
	elsif search > array[mid]
		return _binary_search(array,mid+1,f_right,search)
	elsif search < array[mid]
		return _binary_search(array,f_left,mid+1,search)
	end
end

def _bubblesort(array,max)
	i = 0
	ii = 1
	for i in i..max
		for ii in ii..max
			if array[ii] < array[i]
				temp = array[ii]
				array[ii] = array[i]
				array[i] = temp 
			end
			ii = 0
		end
	end
end
mang = []
puts "nhap so luong mang\n"
int_array = gets.chomp.to_i
_create_array(mang,int_array)
printf "mang vua nhap la \n"
puts mang
puts "sap xep mang theo thu tu tang dan voi quicksort"
_quicksort(mang,0,mang.size-1)
puts mang
puts "nhap gia tri can tim"
v_search = gets.chomp.to_i
_binary_search(mang,0,mang.size-1,v_search)
puts "bubble sort giam dan"
_bubblesort(mang,mang.size-1)
puts mang
