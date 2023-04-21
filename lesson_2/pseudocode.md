A method that returns the sum of two integers:

Given two integers
Add the integers
Return the sum

START
Given two integers called num1 and num2
SET result = num1 + num2
RETURN result
END


A method that takes an array of strings, and returns a string that is all those strings concatenated together

Given an array of strings
Join strings together
Return result

START
Given an array of strings called strings
SET str = empty string
SET iterator = 1
WHILE iterator <= length of strings
  Push string at space "iterator" to end of str
  iterator = iterator + 1
RETURN str
END


A method that takes an array of integers, and returns a new array with every other element from the original array, starting with the first element.

Given an array of integers
Create an empty array
Iterate through numbers
  Check if current number has an even index
  if yes, add to new array
  if no, skip
Return new array

START
Given an array of integers called numbers
SET new_arr = empty array
SET iterator = 1
WHILE iterator <= length of numbers
  Check if current number has an even index
  IF yes, add to new_arr
  ELSE skip
  iterator = iterator + 1
RETURN new_arr
END


A method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

Given a string and a character
Iterate through the string's characters
Set a variable called result to nil
Set a counter starting at 0
On each iteration:
  - compare current character with given character
  - if they match, add 1 to counter and set result to current number's index
  - if they don't match, skip to next iteration
  - Break out of loop when counter equals 3
Return result

START
Given a string called str and a character called char
SET result = nil
SET counter = 0
SET iterator = 1
WHILE counter < 3 AND iterator <= length of str
  IF current letter == char
    counter = counter + 1
  ELSE
    skip
  iterator = iterator + 1
RETURN result
END


A method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes.

Given two arrays of numbers
Create empty array
Iterate through first array
- If new array is empty, push current number to new array
- If not, add number to new array with the index of the last number plus 2
Iterate through second array
- If new array's length is one, push current number to new array
- If not, add number to new array with the index of the last number plus 2
Return new array

START
Given two arrays of numbers, arr_1 and arr_2
SET new_arr = empty array
SET iterator = 0
WHILE iterator < arr_1 length
  IF new_arr is empty, push arr_1 element with index of iterator to new_arr
  ELSE add arr_1 element with index of iterator to new_arr with index of last element in new_arr's index + 2
  iterator = iterator + 1
SET iterator = 0
WHILE iterator < arr_2 length
  IF new_arr length is 1, push arr_2 element with index of iterator to new_arr
  ELSE add arr_2 element with index of iterator to new_arr with index of last element in new_arr's index + 1
  iterator = iterator + 1
RETURN new_arr
