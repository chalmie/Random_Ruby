def caesar_cipher(offset, string)
  words = string.split(" ")
  
  word_id = 0
  while word_id < words.length
    word = words[word_id]
    
    letter_id = 0
    while letter_id < word.length
      letter = word[letter_id]
      
      if letter =~ /[a-z]/
        letter = word[letter_id].ord - "a".ord
      
        new_letter = (letter + offset) % 26
        word[letter_id] = ("a".ord + new_letter).chr
      else
        letter = word[letter_id].ord - "A".ord
        
        new_letter = (letter + offset) % 26
        word[letter_id] = ("A".ord + new_letter).chr
      end
      
      letter_id += 1
    end
    
    word_id += 1
  end
  
  return words.join(" ")
end

=begin
#doesn't work

def caesarcipher(str,num)
  
  arr = str.split('')
  
  num.times do
    arr.map! {|a| a =~ /[a-yA-Y]/ ? a = a.succ : a == "Z" ? a = "A" : a = "z" ? a = "a" : a = a }
  end
  
  arr.join('')
end

=end

p caesar_cipher(1,"AZaz")
