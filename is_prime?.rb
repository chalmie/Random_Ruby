def is_prime?(num)
  if num <= 1
    return false
  end
  
  idx = 2
  while idx < num
    if (num % idx) == 0
      return false
    end
    idx += 1
  end
  return true
end


p is_prime?(7)
p is_prime?(8)