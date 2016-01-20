def additive_persistence(num)
  if num < 10
    return 0
  elsif num < 19
    return 1
  end
  
  num = num.to_s.split('')
  sum = num.map!{|a| a.to_i }.inject(:+).to_s.split('')
  counter = 1
  while sum.length != 1
    sum = sum.map {|a| a.to_i}.inject(:+).to_s.split('')
    counter += 1
  end
  
  return counter
end



def add_per(num)
  adding(num, 0)
end

def adding(num, rounds)
  return rounds if num.to_s.size == 1
  num_arr = num.to_s.split('')
  sum = 0
  num_arr.each {|each| sum += each.to_i}
  adding(sum,rounds += 1)
end

p additive_persistence(999999999999)


