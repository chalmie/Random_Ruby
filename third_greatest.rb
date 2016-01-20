def third_greatest(nums)
  first = nil
  second = nil
  third = nil
  
  idx = 0
  while idx < nums.length
    value = nums[idx]
    
    if (first == nil) || (value > first)
      third = second
      second = first
      first = value
    elsif second == nil || value > second
      third = second
      second = value
    elsif third == nil || value > third
      third = value
    end
    
    idx += 1
  end
  
  return third
end



def third(num)
  
  sorted = num.uniq.sort
  
  return sorted[-3]
end

p third([2,4,1,5,6,3,8])
p third_greatest([2,4,1,5,6,3,8])