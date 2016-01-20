#Find if two nums in an array sum to 0

def two_sum(num_array)
  idx1 = 0
  while idx1 < num_array.length
    idx2 = idx1 + 1
    while idx2 < num_array.length
      if num_array[idx1] + num_array[idx2] == 0
        return [num_array[idx1],idx1, num_array[idx2],idx2]
      end
      idx2 += 1
    end
    idx1 += 1
  end
  return nil
end


p two_sum([1,2,3,4,5,-1])