def palindrome?(string)
  if string.split.join('') == string.split.join('').reverse
    return true
  end
  return false
end

def longest_palindrome(string)
  best_palindrome = nil
  
  idx1 = 0
  while idx1 < string.length
    length = 1
    while (idx1 + length) <= string.length
      substring = string.slice(idx1, length)
      
      if palindrome?(substring)&&(best_palindrome == nil || substring.length > best_palindrome.length)
        best_palindrome = substring
      end
      length += 1
    end
    idx1 += 1
  end
  return best_palindrome
end


p longest_palindrome("cdefbb")

