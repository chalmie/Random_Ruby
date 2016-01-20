def most_common_letter(string)
  most_common_letter = nil
  most_common_letter_count = nil
  
  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0
    
    idx2 = 0
    while idx2 < string.length
      if string[idx2] == letter
        count += 1
      end
      idx2 += 1
    end
    
    if most_common_letter_count == nil || count > most_common_letter_count
      most_common_letter = letter
      most_common_letter_count = count
    end
    
    idx1 += 1
  end
  
  return [most_common_letter, most_common_letter_count]
end



def mcl(string)
  frequency = Hash.new(0)
  words = string.split('').map {|x| x.gsub(/\W+/,"")}
  words.map {|x| frequency[x] += 1 }
  return frequency.sort_by {|x,y| y }.last
end

p mcl("aabbbccccd")
  
  