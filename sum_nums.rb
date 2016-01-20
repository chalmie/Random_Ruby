def sum_num(num)
  result = 0
  
  while num > 0
    result += num
    num -= 1
  end
  
  return result
end

p sum_num(4)