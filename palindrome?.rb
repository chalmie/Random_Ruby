def palindrome?(string)
  idx = 0
  while idx < string.length
    if string[idx] != string[(string.length - 1) - idx]
      return false
    end
    idx += 1
  end
  
  return true
end

#better version
def pdrome?(string)
  if string.split.join('') == string.split.join('').reverse
    return true
  end
  return false
end

p palindrome?("racecar")  #true
p palindrome?("race car") #false
p pdrome?("racecar")    #true
p pdrome?("race car")   #true
p palindrome?("hello")  #false
p pdrome?("hello")     #false