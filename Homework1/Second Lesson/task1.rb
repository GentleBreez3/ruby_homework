# arr = gets.chomp.split(' ').map(&:to_i) #incase we want to take user input for the array

arr = [2,3,4,5,6,7]
arr2 = []
s = arr.length
i = 0
count = 0
while i < s do
	j = 2
	f = 0
  if arr[i]<=1
    f = 1
  else
  	while j < arr[i]
  		if arr[i] % j == 0
  			f = 1
  			break
  		end
  		j+=1
  	end
  	if f == 0
       arr2 = arr2.push(arr[i])
  	   count +=1
  	end
  end
  i +=1
end

puts "Number of prime numbers in the array: " + count.to_s
puts "They are #{arr2}"