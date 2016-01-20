#Check if any nums in an array add up to the greatest
#num in the array


def array_addition(arr)
  
  max = arr.sort!.pop
  combinations = []
  i = arr.count
  while i > 1
    combinations << arr.combination(i).to_a
    i -= 1
  end
  combinations.flatten!(1)
  sums = combinations.map {|a| a.inject(:+) }
  
  return "true" if sums.include?(max)
    
  "false"
end


def ArrayAdditionI(arr)
  arr = arr.sort
  biggest = arr.pop
  
  idx1 = 1
  while idx1 <= arr.length
    combos = arr.combination(idx1).to_a.map {|x| x.inject(:+) }
    
    idx2 = 0
    while idx2 < combos.length
      if combos[idx2] == biggest
        return true
      end
      idx2 += 1
    end
    idx1 += 1
  end
    
  return false
         
end
