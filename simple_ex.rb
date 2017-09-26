# Recursion

def factorial(n)
  if n == 1
    n 
  else 
    n * factorial(n - 1)
  end
end

puts factorial(3)


# Iteration

def factorial(n)
  arr = []
  while n > 0
    arr << n
    n = n - 1
  end 
  
  arr.inject(:*)
end

puts factorial(3)










