=begin
Let d(n) be defined as the sum of proper divisors of n 
(numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b 
are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are
1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end




def proper_divisors(num)
  divisors = Hash.new(0)
  amicables = []
  
  while num > 0
    i = 1
    
    while i < num
      if num % i == 0
        divisors[num] += i
      end
      i += 1
    end
    num -= 1
  end
  
  key = 2 
  while key <= divisors.length
    value = divisors[key]
    
    key2 = 2
    while key2 <= divisors.length
      
      if key2 == value && divisors[key2] == key && key != key2
        amicables << key
      end
      
      key2 +=1
    end
    key += 1
  end
    
  
  return amicables.inject(:+)
  
end


p proper_divisors(10000)
  
  
  
  
    
    
  