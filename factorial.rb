def factorial(n)
  result = 1
  
  while n > 0
    result *= n
    n -= 1
  end
  
  return result
end

p factorial(4)