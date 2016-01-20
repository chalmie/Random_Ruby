#count diff in minutes

def minute_diff(str)
  nums = str.split('-')
  
  nums_two = nums.map {|x| x.gsub(/[amp]/,'')}.map {|y| y.split(':')}
  total_mins = nums_two.map {|z| z[0].to_i * 60 + z[1].to_i }
  
  total_mins[0] += 720 if nums[0] =~ /pm/
  total_mins[1] += 720 if nums[1] =~ /pm/
  total_mins[1] += 1440 if total_mins[0] > total_mins[1]
  
  return total_mins[1] - total_mins[0]
end


p minute_diff("1:34am-1:35am")