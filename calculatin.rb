def add(*numbers)
  numbers.inject(0) {|sum, number| sum + number }
end

def subtract(*numbers)
  result = numbers[0]
  i = 1
  while i < numbers.length
    result -= numbers[i]
    i += 1
  end
  return result
end

def calculate(*numbers)
  what_to_do = {:add => true} if numbers.last.is_a?(Fixnum)
  what_to_do = numbers.pop if numbers.last.is_a?(Hash)

  sum = add(*numbers) if what_to_do[:add]
  sum = subtract(*numbers) if what_to_do[:subtract]
  sum
end