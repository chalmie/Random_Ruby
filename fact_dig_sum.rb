def fact_dig_sum(num)

  result = 1
  while num > 0
    result *= num
    num -= 1
  end
  
  return result.to_s.split('').map {|x| x.to_i }.inject(:+)
end


p fact_dig_sum(100)