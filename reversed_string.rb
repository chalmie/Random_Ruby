def reverse_string(string)
  reversed_string = ""
  
  i = 0
  while i < string.length
    reversed_string = string[i] + reversed_string
    i += 1
  end
  
  reversed_string
end

p reverse_string("hello")