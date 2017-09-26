#Iteration 

def add_all_numbers(min, max, increment)
   destination_array = []  # empty array for loop elements
   x = min                 # declare minimum value (starting point)
   while x < max 
     destination_array << x  # insert each element in the array
     x = x + increment       # increase the result by "increment"
   end 
  
   destination_array.inject(:+) # add all the elements in the array together
end

puts add_all_numbers(1, 10, 1)  #=> 45    # addition of all numbers between 1 and just below 10 

# Recursion

def add_all_numbers(min, max, increment)
    if max == min      # checks if the value of max = min (the value of min = 0 here)
      max - min        # returns difference between max and min (or just return 0)
    else               # if not, recursively calculates the sum
      (max - increment) + add_all_numbers(min, max - increment, increment) 
    end    
end

puts add_all_numbers(1, 10, 1) #=> 45  # addition of all numbers between 1 and just below 10

