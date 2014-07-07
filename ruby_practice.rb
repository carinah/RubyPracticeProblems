# PROBLEM 1: print occurrences of each letter in a string. 

# string = "bubble my stubble"
# hash_table = {} 

# string.each_char do |char|
#   if hash_table.has_key?(char) 
#     hash_table[char] += 1 
#   else 
#     hash_table[char] = 1 
#   end 
# end

# puts hash_table

# PROBLEM 2: merge and sort two already sorted arrays into a new array. 

arr1 = [9]
arr2 = [4]
count1 = 0
count2 = 0 
new_arr =[]

while count1 < arr1.length or count2 < arr2.length
  if count1 == arr1.length
    new_arr << arr2[count2]
    count2 += 1
  elsif count2 == arr2.length 
    new_arr << arr1[count1]
    count1 += 1
  elsif arr1[count1] <= arr2[count2]
    new_arr << arr1[count1]
    count1 += 1
  elsif arr2[count2] < arr1[count1]
    new_arr << arr2[count2]
    count2 += 1 
  end 
end  

puts new_arr.inspect

# Attempt at sorting algorithm 

# while num < arr.length
#   arr.each do |num|
#     if arr[num] > arr[num+1]
#       arr.insert(arr[num], arr.delete_at(arr[num+1]))
#       num+=1
#     end 
#   end 
# end 

# PROBLEM 3: Check if word is a palindrome. 




