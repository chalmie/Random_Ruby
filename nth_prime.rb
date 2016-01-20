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

def nth_prime(n)
  prime_count = 0
  
  i = 2
  while true
    if is_prime?(i)
      prime_count += 1
      if prime_count == n
        return i
      end
    end
    i += 1
  end
end


p nth_prime(3)
p nth_prime(4)
p nth_prime(5)