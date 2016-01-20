def name_score(names)
  names = names.split(' ').sort
  
  total_score = 0
  
  name_id = 0
  while name_id < names.length
    name = names[name_id]
    
    letter_id = 0
    while letter_id < name.length
      letter = name[letter_id]
      
      total_score += letter.ord - 64
      letter_id += 1
    end
    
    total_score *= name_id + 1
    name_id += 1
  end
  
  return total_score
end


