The following iterative sequence is defined for 
the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, 
we generate the following sequence:

13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
It can be seen that this sequence (starting at 13 and 
finishing at 1) contains 10 terms. Although it has not been proved
yet (Collatz Problem), it is thought that all starting numbers 
finish at 1.

Which starting number, under one million, produces the 
longest chain?



def collatz(num)
  count = 0
  while true
    if num == 1
      count += 1
      return count
    elsif num.even?
      count += 1
      num = num / 2
    elsif num.odd?
      count += 1
      num = 3 * num + 1
    end
  end
end


def longest_collatz(n)
  cycle_array = []
  
  while n > 0
    cycle_array << collatz(n)
    n -= 1
  end
  
  ordered_array = cycle_array.reverse!
  longest = ordered_array.max
  longest_index = ordered_array.index(longest)
  
  return [(longest_index + 1), longest]
end

p collatz(13)
        