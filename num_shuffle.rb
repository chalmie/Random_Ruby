#Problem Statement
#Given a 3 or 4 digit number with distinct digits, return a 
#sorted array of all the unique numbers that can be formed with
#those digits.

def number_shuffle(number)
  return number.to_s.chars.to_a.permutation.map(&:join).map(&:to_i).uniq
end

p number_shuffle(123)