def longest_word(string)
  words = string.split(' ')
  longest = nil
  
  i = 0 
  while i < words.length
    current_word = words[i]
    
    if longest == nil || current_word.length > longest.length
      longest = current_word
    end
    
    i += 1
  end
  
  return longest
end


def longest(string)
  longests = []
  longest = string.split(' ').map {|x| x.gsub(/\W+/,'')}.max_by(&:length)
  
  i = 0
  words = string.split(' ').map {|x| x.gsub(/\W+/,'')}
  while i < words.length
    word = words[i]
    
    if word.length == longest.length
      longests << word
    end
    i += 1
  end
  
  return longests
  
end


p longest("hey hello holla ho hee")