def capitalize(string)
  words = string.split(' ')
  
  idx = 0
  while idx < words.length
    word = words[idx]
    
    word[0] = word[0].upcase
    
    idx += 1
  end
  
  return words.join(" ")
end


def capital(string)
  
  return string.split.map {|w| w.capitalize }.join(" ")
end


p capitalize("hello my friend")
p capital("hello my friend")