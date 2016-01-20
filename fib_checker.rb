def fib_checker(num)
  fib = [0,1]
  
  while fib.max <= num
    next_fib = fib[-1] + fib[-2]
    fib << next_fib
  end
  
  if fib.include?(num)
    return true
  else
    return false
  end
end


p fib_checker(13)