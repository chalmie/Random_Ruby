=begin
A perfect number is a number for which the sum of 
its proper divisors is exactly equal to the number. 
For example, the sum of the proper divisors of 28 
would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 
is a perfect number.

A number n is called deficient if the sum of its 
proper divisors is less than n and it is called abundant 
if this sum exceeds n.

As 12 is the smallest abundant number, 
1 + 2 + 3 + 4 + 6 = 16, the smallest number that 
can be written as the sum of two abundant numbers is 24.
By mathematical analysis, it can be shown that all 
integers greater than 28123 can be written as the 
sum of two abundant numbers. However, this upper limit 
cannot be reduced any further by analysis even though it 
is known that the greatest number that cannot be expressed
as the sum of two abundant numbers is less than this limit.

Find the sum of all the positive integers which cannot
be written as the sum of two abundant numbers.
=end





def abund_nums(num)
  abundant_nums = []
  abundant_sums = []
  not_sums = (1..num).to_a
  
  while num > 0
    i = 1
    divisor_sum = 0
    
    while i < num
      if num % i == 0
        divisor_sum += i
      end
      i += 1
    end
    
    if divisor_sum > i 
      abundant_nums << num
    end
    
    num -= 1
  end
  
  idx1 = 0
  while idx1 < abundant_nums.length
    idx2 = 0
    while idx2 < abundant_nums.length
      abundant_sums << abundant_nums[idx1] + abundant_nums[idx2]
      idx2 += 1
    end
    idx1 += 1
  end
  
  
  diff = not_sums - abundant_sums
  return diff.inject(:+)
end



p abund_nums(28123)