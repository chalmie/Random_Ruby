# sum of all multiples of 3 and 5 below num


def three_five_mults(num)
  
  result = 0
  (1..num - 1).each do |n|
    result += n if n % 3 == 0 || n % 5 == 0
  end
  return result
end


p three_five_mults(6)