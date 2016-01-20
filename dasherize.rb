def dasherize(num)
  num_s = num.to_s
  
  dashed = ""
  
  i = 0
  while i < num_s.length
    digit = num_s[i].to_i
    
    if (i > 0)
      prev_digit = num_s[i - 1].to_i
      
      if (prev_digit % 2 == 1) && (digit % 2 == 1)
        dashed += "-"
      end
    end
    dashed += num_s[i]
    
    i += 1
  end
  
  return dashed
end



p dasherize(1774267)