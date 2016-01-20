def thou_dij_fib
  fibs = [1, 1]
  
  
  until fibs.last.to_s.length == 1000
    nextfib = fibs[-1] + fibs[-2]
    fibs << nextfib
  end
  
  fibs.length 
end

p thou_dij_fib