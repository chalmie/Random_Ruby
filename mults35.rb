def three_five_mult(num)
  multiples = []
  
  i = 0
  while i < num
    if i % 3 == 0 || i % 5 == 0
      multiples << i
    end
    i += 1
  end
  
  return multiples.inject(:+)
end


puts three_five_mult(1000)

def second_version(num)

  i = 0
  sum = 0
  
  while i < 1000
    sum += i if i % 3 == 0 || i % 5 == 0
    i += 1
  end
end
  puts sum # => 233168