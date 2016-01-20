# ["5","4","6","E","1","7","E","E","3","2"]
#  #=> [4, 1, 5]
# At every E, take out smallest integer


def offline_min(str_arr)
  mins = []
  
  until not str_arr.include?"E"
    
    current = str_arr.slice(0...str_arr.index("E")).map {|a| a.to_i }
    mins << current.min
    str_arr.delete_at(current.index(current.min))
    str_arr.delete_at(str_arr.index("E"))
  end
  
  mins.join(',')
end


p offline_min(["5","4","6","E","1","7","E","E","3","2"])