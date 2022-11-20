# 1) Method that returns the sum of two integers

# Casual pseudo-code

# Ask user to enter one integer, then a second.
# Perform addition operation
# Return result

# Formal pseudo-code

# START

# GET number from user
# SET number1 = user input
# GET second number from user
# SET number2 = user input
# SET result = number1 + number2, converting to integers
# Return result

# END

# 2) Method that takes an array of string, and returns a string that is all those
# strings concatenated together

# Casual 

# Given an array of strings
# Concatenate each string to form one string
# Print conatenated string

# Formal

# START

# Given array of strings
# SET new empty string
# ITERATE through array , adding each element to new empty string
# RETURN new string

# END

# 3) a method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

# Casual

# Given an array of integers
# Make new empty array
# Iterate over given array, returning every other integer to new array

# Formal

# START
# Given array of integers
# SET new empty array
# ITERATE over given array using .each_with_index
# ADD every other element to new array
# RETURN new array

# END

# 4) a method that determines the index of the 3rd occurrence of a given character in a string.

# Casual

# Given string
# Given character
# Set 3 as the occurance to select
# Iterate over each index, subtracting 1 for each match
# Return index when equal to 0

# Formal

# START

# Given a string called string, determine the index of the third occurence of a given character ("x")
  
# SET count = 3
# Iterate over each character in the string 
# Use && operator
# If string_character = x is false, short circuit
# If string_character = x is TRUE 
# count = count - 1
# if count = 0,  evaluate true
# else,  evaluate false
# string Character = x is TRUE AND count = count - 1 is TRUE Return Index
# If both do not evaluate true before end of string, return nil
 
# END
# Actual code: Found solution and pseudo code in fellow student's Github, now i understand it.

def third(string, chara)
   counter = 3
   string.each_char.find_index do |y|
      y == chara && (counter = counter - 1) == 0
   end
 end
 
 p third("axbxcdxex", "x")

# 5) a method that takes two arrays of numbers and returns the result of merging the arrays. The elements 
# of the first array should become the elements at the even indexes of the returned array, while the 
# elements of the second array should become the elements at the odd indexes.

# Casual

# Given two arrays
# Make new array
# Add arrays to new array alternately
# Stop when arrays are finished

# Formal

# START

# Given two arrays
# SET counter to 0
# SET new array to empty
# WHILE loop counter is lees than the length of given arrays
# PUSH first array to new array
# PUSH second array to new array
# ADD 1 to counter, = counter
# RETURN new array

# END

# Actual code found on Slack , wrote my own pseudocode
array1 = [1,2,3]
array2 = [4,5,6]

def merge(arr_1, arr_2)
   counter = 0
   new_array = []
 
   while counter < arr_1.length
     new_array << arr_1[count]
     new_array << arr_2[count]
     counter += 1
   end
   new_array
 end

 p merge(array1,array2)