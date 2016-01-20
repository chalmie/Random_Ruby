#Find the difference between the sum of the squares of the 
#first one hundred natural numbers and the square of the sum.
#natural = 1,2,3,4,etc.




def sum_square_diff(num)
  num1 = 0
  sum_of_squares = (num + 1).times {|x| num1 += x ** 2 }
  
  num2 = 0
  square_of_sums = (num + 1).times {|x| num2 += x }
  square = num2 ** 2
  
  return square - num1
end



class EulerSix

  def self.sum_of_squares(numbers, sum = 0)
    numbers.each {|num| sum += num**2}
    sum
  end

  def self.square_of_sum(numbers, sum = 0)
    numbers.each {|num| sum += num}
    sum**2
  end

  def self.diff_of_sum_of_squares_and_square_of_sums(numbers)
    square_of_sum(numbers) - sum_of_squares(numbers)
  end

end

p EulerSix.diff_of_sum_of_squares_and_square_of_sums((1..100).to_a)
p sum_square_diff(100)