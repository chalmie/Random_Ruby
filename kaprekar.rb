def kaprekar?(k)
  squared = (k ** 2).to_s
  
  i = 0
  while i < squared.length
    left_num = squared.slice(0,i)
    right_num = squared.slice(i..-1)
    
    if left_num.to_i + right_num.to_i == k
      return true
    end
    
    i += 1
  end
  
  return false
end