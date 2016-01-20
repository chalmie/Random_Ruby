#Find mean & mode. If mode == mean, return 1, else 0.


def mean_mode(arr)
  frequency = arr.inject(Hash.new(0)){|h,v| h[v] += 1; h }
  mode = arr.max_by {|v| frequency[v] }
  mean = arr.reduce(:+) / arr.length
  
  if mode == mean
    return 1
  else
    return 0
  end
end



p mean_mode([2,2])
p mean_mode([1,5,22])