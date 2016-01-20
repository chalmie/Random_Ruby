#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

#Find the sum of all the primes below two million.



def is_prime?(num)
  if num <= 1
    return false
  end
  
  idx = 2
  while idx < num
    if num % idx == 0
      return false
    end
    idx += 1
  end
  
  return true
end

def sum_of_primes(number)
  sum = 0
  
  idx1 = 2
  while idx1 < number
    if is_prime?(idx1)
      sum += idx1
    end
    idx1 += 1
  end
  
  return sum
end


p sum_of_primes(10)