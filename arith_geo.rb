def arith_geo(arr)
  arr_diff = []
  geo_diff = []
  
  (arr.length - 1).times do |i|
    arr_diff << arr[i + 1] - arr[i]
  end
  
  (arr.length - 1).times do |i|
    geo_diff << arr[i + 1] / arr[i]
  end
  
  if arr_diff.all? {|n| n == arr_diff[0] }
    return "Arithmetic"
  elsif geo_diff.all? {|n| n == geo_diff[0] }
    return "Geometric"
  else
    return -1
  end
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
