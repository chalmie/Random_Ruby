#Starting in the top left corner of a 2×2 grid, 
#and only being able to move to the right and down, 
#there are exactly 6 routes to the bottom right corner.



def factorial(n)
  
  result = 1
  while n > 0
    result *= n
    n -= 1
  end
  
  result
end


def lattice_paths(rows,cols)
  
  return factorial(rows + cols) / (factorial(rows) * factorial(cols))
end


p lattice_paths(3,3)