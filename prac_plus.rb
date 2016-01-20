def two_sum(arr)
  idx1 = 0
  while idx1 < arr.length
    idx2 = idx1 + 1
    while idx2 < arr.length
      if arr[idx1] + arr[idx2] == 0 && arr[idx1] != arr[idx2]
        return [idx1,idx2]
      end
      idx2 += 1
    end
    idx1 += 1
  end
  nil
end


p two_sum([0,2,3,0,5])