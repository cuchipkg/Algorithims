
def BinarySearch(array,left,right,vsearch)#de qui
	mid = (left+right)/2 #cong dau cuoi chia 2 de so sanh gia tri giua voi gia tri can tim
	printf "Left: %d Right %d,Mid %d\n",left,right,mid
	if vsearch == array[mid]
		printf "The Value %d At %d \n",vsearch,mid
	elsif vsearch > array[mid]
		return BinarySearch(array,mid+1,right,vsearch)#neu gia tri can tim lon hon,tang chi muc len 1
	elsif vsearch < array[mid]
		return BinarySearch(array,left,mid-1,vsearch)#neu gia tri can tim be hon, giam chi muc xuong 1
	else
		return -1
	end
end
mang = [1,12,33,40,60,80,90,91,95,100]
puts "Nhap Gia tri can tim"
search = gets.chomp.to_i

puts BinarySearch(mang,0,mang.size,search)
