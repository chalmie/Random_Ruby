#Insert dashes b/w odd numbers

def dash_insert(str)
  arr = []
  str.split('').each_with_index do |i,idx|
    i.to_i.odd? && str[idx + 1].to_i.odd? ? arr << i + "-" : arr << i
  end
  return arr.join
end


