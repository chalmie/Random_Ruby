#What is the 10 001st prime number?



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
  prime_num = 0
  
  i = 2
  while true
    if is_prime?(i)
      prime_num += 1
      if prime_num == n
        return i
      end
    end
    i += 1
  end
end


