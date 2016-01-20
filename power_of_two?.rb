def power_of_two?(num)
  if num == 0
    return false
  end
  
  while true
    if num == 1
      return true
    elsif num % 2 == 0
      num = num / 2
    else
      return false
    end
  end
end


def pow_of_two?(num)
  
  i = 0
  while 2 ** i <= num
    if 2 ** i == num
      return true
    end
    i += 1
  end
  
  return false
end

p power_of_two?(31)