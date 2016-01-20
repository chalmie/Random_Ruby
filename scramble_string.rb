def scramble_string(string,positions)

  result = ""
  i = 0
  while i < positions.length
    result += string[positions[i]]
    i += 1
  end
  
  return result
end


p scramble_string("hello",[4,0,3,2,1])