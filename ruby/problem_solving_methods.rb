#RELEASE 0
#Write a method that takes an array of integers
arr = [1,2,3,4,5,6,7,8,9,10]

def search_array(array, indivual)
  index = 0
  while index < array.length
    if array[index] == indivual
      p index
    end
  index += 1
  end
end

#and an integer to search for
p search_array(arr, 2)
p search_array(arr, 21)

#The method should return the index of the item, or nil if the item is not present in the array


#RELEASE 1
#Fibonocci sequence
# Write a method where the argument determines how long the final fibanacci sequence array will be
#start with empty array
#a=0 ; insert a into beginning of array.
# a become b.
# add a and b and insert new value into sequence

def fib_method(n)
  fib_array  = []
  a = 0
  b = 1
  fib_array.push(a)
  n.times do
  c = a
  a = b
  b = c + b
  
  fib_array.push(a)
  end
  p fib_array
end
 
fib_method(10)



#RELEASE 2
