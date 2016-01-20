def greatest_common_factor(num1,num2)
  
  i = nil
  if num1 <= num2
    i = num1
  else
    i = num2
  end
  
  while true
    if (num1 % i == 0) && (num2 % i == 0)
      return i
    end
    
    i -= 1
  end
end


