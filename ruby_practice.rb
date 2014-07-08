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

# arr1 = [9]
# arr2 = [4]
# count1 = 0
# count2 = 0 
# new_arr =[]

# while count1 < arr1.length or count2 < arr2.length
#   if count1 == arr1.length
#     new_arr << arr2[count2]
#     count2 += 1
#   elsif count2 == arr2.length 
#     new_arr << arr1[count1]
#     count1 += 1
#   elsif arr1[count1] <= arr2[count2]
#     new_arr << arr1[count1]
#     count1 += 1
#   elsif arr2[count2] < arr1[count1]
#     new_arr << arr2[count2]
#     count2 += 1 
#   end 
# end  

# puts new_arr.inspect

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
require 'pry'


# def isPalindrome?(word) 
#   i = 0 
#   m = false 

#   while i < word.length / 2 
#     if word[i] == word[word.length - i - 1]
#       i += 1
#     else
#       m = true
#       puts "not a palindrome"
#       break
#     end
#   end 
#   unless m 
#     puts "is a palindrome"
#   end 
# end 

# Problem 4: Reverse an array of numbers. 

# def reverseArray(array) 
#   i = 0

#   while i < array.length / 2
#     m = array.insert(array.length-1-i, array[i])
#     m.delete_at(i)
#     m = array.insert(i, array[array.length-1-i])
#     m.delete_at(array.length-1-i)
#     i += 1
#   end
#   puts array.inspect
# end


# reverseArray([1,2,3,4])


def reverseArray(array) 
  i = 0

  while i < array.length / 2
    temp = array[i]
    array[i] = array[array.length - i - 1]
    array[array.length - i - 1] = temp
    i += 1
  end
  puts array.inspect
end


reverseArray([1,2,3,4])



