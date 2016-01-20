=begin

def ThirdGreatest(strArr)

  ordered = strArr.sort_by {|x| x.length }
  
  third = ordered[-3]
  reversed = strArr.reverse
  
  i = 0
  while i < reversed.length
    if reversed[i].length == third.length
      return reversed[i]
    end
    i += 1
  end
         
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


def ArithGeo(arr)
  arr = arr.reverse
  arith_arr = []
  geo_arr = []
  
  i = 0
  while i < arr.length - 1
    arith_diff = arr[i] - arr[i + 1]
    arith_arr << arith_diff
    geo_diff = arr[i] / arr[i + 1]
    geo_arr << geo_diff
    i += 1
  end
  
  if arith_arr.uniq.length == 1
    return "Arithmetic"
  elsif geo_arr.uniq.length == 1
    return "Geometric"
  else
    return -1
  end
         
end


def LetterCountI(str)
  repeated = nil
  most_repeats = nil
  words = str.split(' ')
  
  idx1 = 0
  while idx1 < words.length
    word = words[idx1]
    count = 0
    
    idx2 = 0
    while idx2 < word.length
      letter = word[idx2]
      
      
      idx3 = idx2 + 1
      while idx3 < word.length
        if word[idx3] == letter
          count += 1
        end
        idx3 += 1
      end
      idx2 += 1
    end
    
    if (repeated == nil) || (count > repeated)
      repeated = count
      most_repeats = word
    end
    
    idx1 += 1
  end
  
  if repeated == 0
    return -1
  else
    return most_repeats
  end
end
     
   


def DivisionStringified(num1,num2)
  stringified = ""
  result = nil
  if num1 >= num2
    result = (num1 / num2.to_f).ceil.to_s.reverse
  else
    result = (num2 / num1.to_f).ceil.to_s.reverse
  end
  
  if result.length <= 3
    return result.reverse
  end
  
  i = 0
  while i < result.length
    if (i != 0) && (i % 3 == 0) && ((i + 1).nil? == false)
      stringified += ","
    end
    stringified += result[i]
    i += 1
  end

  return stringified.reverse
         
end

def DivisionStringified(num1,num2)
  result = num1/num2.to_f
  result = result.round.to_s
  return result if result.split('').size <= 3

  new_result = []

  result.reverse.split('').each_with_index do |num,idx|
    new_result << num
    if (idx + 1) % 3 == 0
       new_result << ","
    end 
  end
  new_result.reverse.join
         

end
=end

def division_stringified(num1,num2)
  result = num1/num2.to_f
  result = result.round.to_s.reverse
  
  if result.length <= 3
    return result.reverse
  elsif (result.length == 4 || result.length == 5 || result.length == 6)
    return result.insert(3,",").reverse
  elsif (result.length == 7 || result.length == 8 || result.length == 9)
    return result.insert(3,",").insert(7,",").reverse
  end
end

p division_stringified(503394930,43)
  
  
  
  
  
  
  
  
  
  
  
  
  