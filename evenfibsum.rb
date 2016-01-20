#By considering the terms in the Fibonacci sequence whose
#values do not exceed four million, find the sum of the 
#even-valued terms.


def even_fibs_sum(num)
  fibs = [0,1]
  
  while fibs.max < num
    nexty = fibs[-1] + fibs[-2]
    fibs << nexty
  end
  
  sum = 0
  fibs.map {|x| sum += x if x.even? }
  
  return sum
end

puts even_fibs_sum(10)