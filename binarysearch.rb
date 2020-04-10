
def BinaryTree(array,left,right,vsearch)
	mid = (left+right)/2
	printf "Left: %d Right %d,Mid %d\n",left,right,mid
	if vsearch == array[mid]
		printf "The Value %d At %d \n",vsearch,mid
	elsif vsearch > array[mid]
		return BinaryTree(array,mid+1,right,vsearch)
	elsif vsearch < array[mid]
		return BinaryTree(array,left,mid-1,vsearch)
	else
		return -1
	end
end
mang = [1,12,33,40,60,80,90,91,95,100]
puts "Nhap Gia tri can tim"
search = gets.chomp.to_i

puts BinaryTree(mang,0,mang.size,search)
