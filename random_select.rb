def random_select(array, n)
  rand_array = []
  n.times do
    rand_array << array.shuffle.first
  end
  
  rand_array
end

p random_select([5,3,2,1,6,3,4,5], 2)