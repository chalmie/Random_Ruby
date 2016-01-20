def second_great_low(arr)
  
  if arr.size == 2
    return "#{arr.max}, #{arr.min}"
  end
  arr = arr.uniq.map {|x| x.to_i }.sort!
  return "#{arr[1]},#{arr[-2]}"
end

p second_great_low([2,4,1,3,6])