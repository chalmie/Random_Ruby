def count_vowels(string)

  count = 0
  
  i = 0
  while i < string.length
    if (string[i] == "a" || string[i] == "e" || string[i] == "i" ||
    string[i] == "o" || string[i] == "u")
      count += 1
    end
    i += 1
  end
  
  return count
end


def count_v(string)

  count = 0
  i = 0
  while i < string.length
    if string[i].downcase =~ /[aeiou]/
      count += 1
    end
    i += 1
  end
  
  return count 
end


def count_vow(string)
 
  return string.downcase.scan(/[aeiou]/).length
end

p count_vowels("hello love")
p count_v("hello love")
p count_vow("hello love")