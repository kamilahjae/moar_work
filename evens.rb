numbers = [0,1,2,3,4,5]

def evens(numbers)
  array = []
  numbers.each {|n| array << n if n % 2 == 0}
  array # must return the new array when you use each
end

def evens
  numbers.map {|n| n if n % 2 == 0}.compact
end

puts evens(numbers).inspect

def evens(numbers)
  array = []
  numbers.each_with_index {|n, i| array << n if i % 2 == 0}
  array
end


# Lets try with a while loop
def evens(numbers)
  array = []
  i = 0
  while i < numbers.length
    array << numbers[i] if i % 2 == 0
    i += 1
  end
  array
end

# Lets make the while loop faster
def evens(numbers)
  array = []
  i = 2 #excludes 0 from array
  while i < numbers.length
    array << numbers[i] #we want the index of the number array
    i += 2 #this jumps to the even index
  end
  array
end

# with map and collect you will always return the same number of objects that
# you begin with
