def part2(array,first,vpivot)
	pivot = array[vpivot]
	i = first#chi muc 1
	high_number = first#chi muc 2
	while i < vpivot 
		if array[i] <= pivot#neu gia tri chi muc 1 be hon pivot
			temp = array[i]
			array[i] = array[high_number]#dao gia tri chi muc 1 voi chi muc 2 (chi muc 2 co gia tri lon hon chi muc 1)
			array[high_number] = temp
			high_number += 1
		end
		i+= 1
	end
	temp = array[high_number]
	array[high_number] = array[i]#dao gia tri chi muc 1 voi chi muc 2
	array[i] = temp
	printf "(1) %d %d\n",high_number,i
end
mang = [5,1,7,3,4,9,6,11,3]
part2(mang,0,mang.size-1)
puts mang