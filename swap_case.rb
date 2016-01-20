def swap_case(str)
  
  result = ''
  i = 0
  while i < str.length
    if str[i] =~ /[A-Z]/
      result += str[i].downcase
    elsif str[i] =~ /[a-z]/
      result += str[i].upcase
    else
      result += str[i]
    end
    i += 1
  end
  return result
end


#OR return str.swapcase


p swap_case("HelllLLLo")