#If there's a letter in a string, it must be followed and 
#preceded by a "+"

def simple_symbols(str)
  str = str.split('')
  str.each_with_index do |char,idx|
    if char =~ /[a-z]/
      return false if str[idx + 1] != "+" || str[idx - 1] != "+"
    end
  end
  return true
end


p simple_symbols("23+a+4+a+")
p simple_symbols("234")
p simple_symbols("abs")