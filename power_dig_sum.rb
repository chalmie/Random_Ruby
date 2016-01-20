def power_dig_sum(num, power)

  result = num ** power
  
  return result.to_s.split('').map {|x| x.to_i }.inject(:+)
end

p power_dig_sum(2,1000)
  