#1

def reversed_string(string)
  reversed = ""
  
  i = 0
  while i < string.length
    reversed = string[i] + reversed
    i += 1
  end
  
  return reversed
end

#2

def factorial(num)
  result = 1
  
  while num > 0
    result *= num
    num -= 1
  end
  
  return result
end

#3

def longest_word(sentence)
  longest = nil
  words = sentence.split(' ')
  
  i = 0
  while i < words.length
    current_word = words[i]
    
    if longest == nil || current_word.length > longest.length
      longest = current_word
    end
    
    i += 1
  end
  
  return longest
end


#4

def long_word(sentence)
  return sentence.split(' ').sort_by {|x| x.length }.last
end


#5

def sum_nums(num)
  result = 0
  
  while num > 0
    result += num
    num -= 1
  end
  
  return result 
end


#6

def time_conversion(minutes)
  hours = 0
  
  while minutes >= 60
    hours += 1
    minutes -= 60
  end
  
  if minutes < 10
    minutes_s = "0" + minutes.to_s
  else
    minutes_s = minutes.to_s
  end
  
  return hours.to_s + ":" + minutes_s
end


#7

def count_vowels(string)
  num_vowels = 0
  
  i = 0
  while i < string.length
    if string[i] =~ /[aeiou]/i
      num_vowels += 1
    end
    i += 1
  end
  
  return num_vowels
end


#7

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end
    i += 1
  end
  
  return true
end


#8

def pali?(string)
  if string != string.reverse
    return false
  end
  return true
end


#9

def nearby_az(string)

  if string =~ /az|a.z|a..z/
    return true
  end
  
  return false
end


#10

def near_az(string)
  
  idx1 = 0
  while idx1 < string.length
    if string[idx1] != "a"
      idx1 += 1
      next
    end
    
    idx2 = idx1 + 1
    while idx2 < string.length && idx2 <= idx1 + 3
      if string[idx2] == "z"
        return true
      end
      idx2 += 1
    end
    
    idx1 += 1
  end
  
  return false
end


#11

def two_sum(num)
  idx1 = 0
  while idx1 < num.length
    idx2 = idx1 + 1
    while idx2 < num.length
      if num[idx1] + num[idx2] == 0
        return [idx1,idx2]
      end
      idx2 += 1
    end
    idx1 += 1
  end
  return nil
end


#12

def power_of_two?(num)

  if num == 0
    return false
  end
  
  while true
    if num == 1
      return true
    elsif num % 2 == 0
      num = num / 2
    else
      return false
    end
  end
end


#13

def pow_of_two?(num)

  i = 0
  while 2 ** i <= num
    if 2 ** i == num
      return true
    end
    i += 1
  end
  
  return false
end


#14

def third_greatest(num)

  first = nil
  second = nil
  third = nil
  
  i = 0
  while i < num.length
    current = num[i]
    
    if first == nil || current > first
      third = second
      second = first
      first = current
    elsif second == nil || current > second
      third = second
      second = current
    elsif third == nil || current > third
      third = current
    end
    
    i += 1
  end
  
  return third
end


#15

def third_great(num)

  return num.uniq.sort.rotate(-2).last
end


#16

def most_common_letter(string)
  frequency = Hash.new(0)
  return string.map {|x| frequency[x] += 1 }.sort_by {|x,y| y }.last
end


#17

def mcl(string)
  mcl = nil
  mclc = nil
  
  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0
    
    idx2 = 0
    while idx2 < string.length
      if string[idx2] == letter
        count += 1
      end
      idx2 +=1
    end
    
    if mclc == nil || count > mclc
      mcl = letter
      mclc = count
    end
    
    idx1 += 1
  end
  
  return [mcl,mclc]
end


#18

def dasherize(num)
  num_s = num.to_s
  
  dashed = ""
  
  idx = 0
  while idx < num_s.length
    digit = num_s[i].to_i
    
    if i > 0
      prev_digit = num_s[i - 1].to_i
      
      if prev_digit % 2 == 1 || digit % 2 == 1
        dashed += "-"
      end
    end
    dashed += num_s[i]
    i += 1
  end
  
  return dashed
end


#19

def capitalize(string)
  words = string.split(' ')
  
  i = 0
  while i < word.length
    word = word[i]
    
    word = word[0].upcase
    
    i += 1
  end
  
  return words.join(' ')
end


#20


def scramble_string(string,positions)

  result = ""
  
  i = 0
  while i < positions.length
    result += string[positions[i]]
    i += 1
  end
  
  return result
end


#21

def is_prime?(num)
  if num < 2
    return false
  end
  
  idx = 2
  while idx < num
    if num % idx == 0
      return false
    end
    idx += 1
  end
  
  return true
end


#22

def nth_prime(num)
  count = 0
  
  idx = 2
  while true
    if is_prime?(idx)
      count += 1
      if count == num
        return idx
      end
    end
    idx += 1
  end
end


#23

def longest_pali(string)
  longest = nil
  
  idx = 0
  while idx < string.length
    length = 1
    while length <= string.length
      substring = string.slice(idx,length)
    
      if (palindrome?(substring)) && (longest == nil || substring.length > longest.length)
        longest = substring
      end
      
      length += 1
    end
    idx += 1
  end
  
  return longest
end

def long_palindrome(string)
  longest = nil
  
  idx = 0
  while idx < string.length
    length = 1
    while (idx + length) <= string.length
      substring = string.slice(idx,length)
    
      if (palindrome?(substring)) && (longest == nil || substring.length > longest.length)
        longest = substring
      end
      
      length += 1
    end
    idx += 1
  end
  
  return longest
end


#24

def gcf(num1,num2)
  i = nil
  if num1 <= num2
    i = num1
  else
    i = num2
  end
  
  while true
    if num1 % i == 0 && num2 % i == 0
      return i
    end
    i -= 1
  end
end


#25

def num_rep(string)
  frequency = Hash.new
  string.map {|x| frequency[x] += 1 }
  return frequency.select {|x,y| y > 1 }
end


#26

def num_rep_two(string)
  repeats = []
  
  idx1 = 0
  while idx1 < string.length
    letter = string[idx1]
    count = 0
    
    idx2 = 0
    while idx2 < string.length
      if string[idx2] == letter
        count += 1
      end
      idx2 += 1
    end
    
    if count > 1
      repeats << letter
    end
    
    idx1 += 1
  end
  
  return repeats.uniq.size
end


#27

def caesar_cipher(string,shift)
  words = string.split(' ')
  
  idx1 = 0
  while idx1 < words.length
    word = words[idx1]
    
    idx2 = 0
    while idx2 < word.length
      letter = word[idx2]
      
      if letter =~ /[a-z]/
        letter = word[idx2].ord - "a".ord
        
        new_letter = (letter + shift) % 26
        
        word[idx2] = (new_letter + "a".ord).chr
      elsif letter =~ /[A-Z]/
        letter = word[idx2].ord - "A".ord
        
        new_letter = (letter + shift) % 26
        
        word[idx2] = (new_letter + "A".ord).chr
      end
      idx2 += 1
    end
    idx1 += 1
  end
  
  return words.join(' ')
end


#28

def three_five_mults(num)

  while num > 0
    if num % 3 == 0 || num % 5 == 0
      puts "boo"
    else
      puts num
    end
    num -= 1
  end
end


#29

def even_fib_sum(num)

  fibs = [0,1]
  
  while fibs.last <= num
    next_fib = fibs[-1] + fibs[-2]
    fibs << next_fib
  end
  
  return fibs.select {|x| x.even? }.reduce(:+)
end


#30

def large_prime_factor(n)
  factors = []
  
  idx = 1
  while idx < n
    if n % idx == 0
      factors << idx
    end
    idx += 1
  end
  
  return factors.select {|x| is_prime?(x) }.sort.last
end


#31

def largest_palindrome_project
  palindromes = []
  
  idx1 = 999
  while idx1 > 900
    idx2 = 999
    while idx2 > 900
      product = idx1 * idx2
      
      if palindrome?(product.to_s)
        palindromes << product
      end
      
      idx2 -= 1
    end
    
    idx1 -= 1
  end
  
  return palindromes.max
end


#31

def sum_of_squares(num)
  sum = 0
  
  while num > 0
    sum += num ** 2
    num -= 1
  end
  
  return sum
end

def square_of_sums(num)
  
  sums = 0
  
  while num > 0
    sums += num
    num -= 1
  end
  
  return sums ** 2
end

def diff_btw_sum_of_and_square_of(num)
  return square_of_sums(num) - sum_of_squares(num)
end


#32

def largest_product(num)
  largest_series = nil
  largest_product = nil
  num_s = num.to_s
  
  idx1 = 0
  while idx1 < num_s.length
    series = num_s.slice(idx1,13).split('').map {|x| x.to_i }
    series_product = series.inject(:*)
    
    if largest_product == nil || series_product > largest_product
      largest_series = series
      largest_product = series_product
    end
    
    idx1 += 1
  end
  
  return [largest_series, largest_product]
end


#33

def pythag_trip(num)

  c = 3
  while c < num
    b = 2
    while b < c
      a = 1
      while a < b
        if (a + b + c == num) && (a ** 2 + b ** 2 == c ** 2)
          return [a,b,c]
        end
        a += 1
      end
      b += 1
    end
    c += 1
  end
  
  return nil
end


#34

def pythag_trips_under(num)
  trips = []
          
  c = 3
  while c < num
    b = 2
    while b < c
      a = 1
      while a < b
        if a ** 2 + b ** 2 == c ** 2
          trips << [a,b,c]
        end
        a += 1
      end
      b += 1
    end
    c += 1
  end
  
  return trips
end


#35

def sum_of_primes_under(n)
  sum = 0
  primes = []
  idx = 2
  while idx < n
    if is_prime?(idx)
      primes << idx
      sum += idx
    end
    idx += 1
  end
  
  return [sum, primes]
end


#36

def number_of_factors(num)
  factors = []
  
  idx = 1
  while idx <= num
    if num % idx == 0
      factors << idx 
    end
    idx += 1
  end
  
  return factors.size
end


#37

def triangle_nums_divisor_count(num)
  
  triangles = [1]
  
  idx = 2
  while number_of_factors(triangles.last) < num 
    new_triangle = sum_nums(idx)
    triangles << new_triangle
    
    idx += 1
  end
  
  return [triangles.last, number_of_factors(triangles.last)]
end


#38

def collatz_count(num)
  count = 1
  
  while true
    if num == 1
      return count
    elsif num.even?
      num = num / 2
      count += 1
    elsif num.odd?
      num = 3 * num + 1
      count += 1
    end
  end
end

#39

def longest_collatz_under(num)
  longest = nil
  longest_count = nil
  
  idx = 1
  while idx < num
    count = collatz_count(idx)
    
    if longest_count == nil || count > longest_count
      longest = idx
      longest_count = count
    end
    
    idx += 1
  end
  
  return [longest,longest_count]
end


#40

def sum_of_factors(num)
  factors = []
  
  idx = 1
  while idx < num
    if num % idx == 0
      factors << idx
    end
    idx += 1
  end
  
  return factors.inject(:+)
end

#41

def sum_of_amicable_nums_under(num)
  num_and_sum = {}
  amicables = []
  idx = 2
  
  while idx < num
    num_and_sum[idx] = sum_of_factors(idx)
    idx += 1
  end
  
  idx2 = 2
  while idx2 < num_and_sum.length
    idx3 = 2
    
    while idx3 < num_and_sum.length
      if (num_and_sum[idx2] == idx3) && (num_and_sum[idx3] == idx2) && (idx2 != idx3)
        amicables << idx2
      end
    
      idx3 += 1
    end
    
    idx2 += 1
  end
  
  return amicables.reduce(:+)
        
end


#42

def first_fib_with_digits(n)

  fibs = [0,1]
  
  while fibs.last.to_s.length != n
    next_fib = fibs[-1] + fibs[-2]
    fibs << next_fib
  end
  
  return fibs.size - 1
end


#43

def abundant?(num)
  factors = []
  
  idx = 1
  while idx < num
    if num % idx == 0
      factors << idx
    end
    idx += 1
  end
  
  if factors.reduce(:+) > num 
    return true
  end
  
  return false
end


#44

def non_abundants_sum_under(num)
  
  abundants = []
  abundant_sum = []
  non_abundant_sum = []
  
  idx = 2
  while idx < num
    if abundant?(idx)
      abundants << idx
    end
    idx += 1
  end
  
  idx1 = 0
  while idx1 < abundants.length
    idx2 = 1
    while idx2 < abundants.length
      sum = abundants[idx1] + abundants[idx2]
      
      abundant_sum << sum
      
      idx2 += 1
    end
    idx1 += 1
  end
  
  idx3 = 1
  while idx3 < num
    unless abundant_sum.include?(idx3)
      non_abundant_sum << idx3
    end
    idx3 += 1
  end
  
  return non_abundant_sum.reduce(:+)
end

#45


def letter_changes(string)

  i = 0
  while i < string.length
    if string[i] =~ /[a-zA-Z]/
      string[i] = string[i].next
    end
    i += 1
  end
  
  j = 0
  while j < string.length
    if string[j] =~ /[aeiou]/i
      string[j] = string[j].upcase
    end
    j += 1
  end
  
  
  return string
end


#46

def lucky_sevens?(numbers)
  groups_of_three = []
    
  idx1 = 0
  length = 3
  while idx1 + length <= numbers.length
    group = numbers.slice(idx1,length)
    
    groups_of_three << group
    
    idx1 += 1
  end
  
  idx2 = 0
  while idx2 < groups_of_three.length
    if groups_of_three[idx2].reduce(:+) == 7
      return true
    end
    idx2 += 1
  end
  
  return false

end


#47

def oddball_sum(numbers)

  result = numbers.select{|x| x.odd? }.reduce(:+)
  
  if result != nil
    return result
  else
    return 0
  end
  
end


#48

def disemvowel(string)
  
  return string.gsub(/[aeiou]/i,"")
end

#49

def crazy_sum(numbers)

  products = []
  
  idx = 0
  while idx < numbers.length
    product = numbers[idx] * idx
    
    products << product
    
    idx += 1
  end
  
  return products.reduce(:+)
end

#50

def square_nums(num)
  perfect_squares = []
  
  idx = 1
  while idx < num
    if idx ** 2 < num
      perfect_squares << idx
    end
    idx += 1
  end
  
  return perfect_squares.size
end

#51

def crazy_nums(number)
  factors = []
  
  number = number - 1
  while number > 0
    if number % 3 == 0 || number % 5 == 0
      factors << number
    end
    number -= 1
  end
  
  factors.delete_if {|x| x % 3 == 0 && x % 5 == 0}
  
  return factors.reverse
end


#52

def nearest_larger(arr, i)
  
  if arr.max == arr[i]   
    return nil
  end
  
  idx_up = i + 1
  idx_down = i - 1
  
  while true
    if arr[idx_down] > arr[i]      
      return arr.index(arr[idx_down])
    elsif arr[idx_up] > arr[i]     
      return arr.index(arr[idx_up])
    else
      idx_down -= 1  
      idx_up += 1
    end
  end
end


#53
def no_repeat?(year)
  frequency = Hash.new(0)    
  year.to_s.split('').map {|x| frequency[x] += 1 }   
  
  if frequency.select {|x,y| y > 1 }.empty? == true 
    return true                                     
  else
    return false
  end
end

#54

def no_repeats(year_start, year_end)
  non_repeating = []    
  
  years_array = (year_start..year_end).to_a   
  
  idx = 0
  while idx < years_array.length             
    if no_repeat?(years_array[idx]) == true
      non_repeating << years_array[idx]
    end
    idx += 1
  end
  
  return non_repeating
end


#55

def letter_count(str)
  no_space_arr = str.gsub(/\s+/,"").split('')   
  
  frequency = Hash.new(0)                       
  no_space_arr.map {|x| frequency[x] += 1 }
  
  return Hash[frequency.sort_by {|k,v| v}.reverse] 
end


#56
def ordered_vowel_word?(word)
  
  if word.split('').delete_if {|x| x =~ /[^aeiou]/ } == word.split('').delete_if {|x| x =~ /[^aeiou]/ }.sort
    return true
  else
    return false
  end
end

#57
def ordered_vowel_words(str)
  result = []            
  
  words = str.split(' ')
  
  idx = 0
  while idx < words.length
    word = words[idx]
    
    if ordered_vowel_word?(word)
      result << word
    end
    
    idx += 1
  end
  
  return result.join(' ')
end


#58

def wonk_coins(value)
  coins = [value]                
  
  while true
    if coins.all? {|x| x == 0 }   
      return coins.size
    end
    
    idx = 0
    returned_coins = []           
    while idx < coins.length
      coin = coins[idx]           
      
      if coin == 0
        returned_coins << 0
      else
        returned_coins << coin / 2
        returned_coins << coin / 3
        returned_coins << coin / 4
      end
      
      idx += 1
    end
    
    coins = returned_coins       
  end
end

def wonky_coins(n)
  return 1 if n == 0

  # call wonky_coins from inside itself. This is called *recursion*.
  return wonky_coins(n / 2) + wonky_coins(n / 3) + wonky_coins(n / 4)
end


    
#59 

def morse_encode_word(word)

  morse = {
    "a" => ".-",
    "b" => "-...",
    "c" => "-.-.",
    "d" => "-..",
    "e" => ".",
    "f" => "..-.",
    "g" => "--.",
    "h" => "....",
    "i" => "..",
    "j" => ".---",
    "k" => "-.-",
    "l" => ".-..",
    "m" => "--",
    "n" => "-.",
    "o" => "---",
    "p" => ".--.",
    "q" => "--.-",
    "r" => ".-.",
    "s" => "...",
    "t" => "-",
    "u" => "..-",
    "v" => "...-",
    "w" => ".--",
    "x" => "-..-",
    "y" => "-.--",
    "z" => "--..",
}   
  
  result = []
  
  idx = 0
  while idx < word.length
    letter = word[idx]
    
    result << morse[letter]
    
    idx += 1
  end
  
  return result.join(' ')
end


#60

def morse_encode_string(str)
  
  result = []
  
  words = str.split(' ')
  
  idx = 0
  while idx < words.length
    word = words[idx]
    
    result << morse_encode_word(word)
    
    idx += 1
  end
  
  return result.join("  ")
end


#61


def word_unscrambler(string,dict_arr)
  
  string_freq = Hash.new(0)              
  string.split('').map {|x| string_freq[x] += 1 }
  
  dict_freq = []
  idx = 0
  while idx < dict_arr.length    
    dict_word = dict_arr[idx]
    
    dict_word_freq = Hash.new(0)
    
    dict_word.split('').map {|x| dict_word_freq[x] += 1 }
    
    dict_freq << dict_word_freq
    
    idx += 1
  end
  
  matching_words = []
  idx2 = 0                        
  while idx2 < dict_freq.length
    word = dict_freq[idx2]
    
    if string_freq == word
      matching_words << dict_arr[idx2]
    end
    
    idx2 += 1
  end
  
  return matching_words
end


#62   

def rec_intersection(rect1, rect2)
  rect1a = rect1[0][0]
  rect1b = rect1[0][1]
  rect1c = rect1[1][0]
  rect1d = rect1[1][1]
  
  rect2a = rect2[0][0]
  rect2b = rect2[0][1]
  rect2c = rect2[1][0]
  rect2d = rect2[1][1]
  
  int_a = nil
  int_b = nil
  int_c = nil
  int_d = nil
  
  if rect1a >= rect2a
    int_a = rect1a
  else
    int_a = rect2a
  end
  
  if rect1b >= rect2b
    int_b = rect1b
  else
    int_b = rect2b
  end
  
  if rect1c <= rect2c
    int_c = rect1c
  else
    int_c = rect2c
  end
  
  if rect1d <= rect2d
    int_d = rect1d
  else
    int_d = rect2d
  end
  
  intersection = [[int_a,int_b],[int_c,int_d]]
  
  
  return intersection
  
  
  
end


=begin
p rec_intersection([[0,0],[2,1]],[[1,0],[3,1]])
p rec_intersection([[1,1],[2,2]],[[0,0],[5,5]])
p rec_intersection([[1,1],[2,2]],[[4,4],[5,5]])
p rec_intersection([[1,1],[5,4]],[[2,2],[3,5]])
=end

# 63 
def fizzbuzz(num)
  (1..num).each do |n|
      puts(
         n % 15 == 0 ? 'FizzBuzz' :
         n % 5 == 0  ? 'Buzz' :
         n % 3 == 0  ? 'Fizz' : n
      )
  end
end


#64

def bubble_sort(array)
  return array if array.size <= 1
  
  loop do
    swapped = false
    0.upto(array.size - 2) do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    break unless swapped
  end
  
  array
end

#65

def bbblsrt(list)
  return list if list.size <= 1
  
  swapped = true
  while swapped
    swapped = false
    0.upto(list.size - 2) do |i|
      if list[i] > list[i + 1]
        list[i], list[i + 1] = list[i + 1], list[i]
        swapped = true
      end
    end
  end
  
  list
end


#66

def another_bubble(list)
  sorted = false
  until sorted
    sorted = true
    for i in 0..(list.length - 2)
      if list[i] > list[i + 1]
        sorted = false
        list[i], list[i + 1] = list[i + 1], list[i]
      end
    end
  end
  return list
end

#67 Only works if there are no duplicate numbers
def sorting(array)
  sorted = Array.new(array.length)
  
  idx1 = 0
  while idx1 < array.length
    count = 0
    num = array[idx1]
    
    idx2 = 0
    while idx2 < array.length
      if num > array[idx2]
        count += 1
      end
      idx2 += 1
    end
    
    sorted[count] = array[idx1]
    
    idx1 += 1
  end
  
  return sorted
end


 #68
 
 def sum_the_num(num)
 
  result = 0
  (num + 1).times do |x|
    result += x
  end

  return result 
end


#69

def summing_nums(num)
  result = 0
  (0..num).each do |x|
    result += x
  end
  
  return result
end


#70

def sum_numbers(num)

  result = 0
  0.upto(num) do |x|
    result += x
  end
  
  return result
end


#71 

def another_sum_num(num)

  result = 0
  for i in (0..num)
     result += i
  end
  
  return result
end


#81

def my_uniq(arr)
  uniq_array = []
  
  frequency = Hash.new(0)
  arr.map {|x| x.to_s}.map {|x| frequency[x] += 1 }
  
  uniq_array << frequency.keys.map {|x| x.to_i }
  
  return uniq_array
end


#82

def two_sum_two(arr)
  matches = []
  idx1 = 0
  while idx1 < arr.length
    idx2 = 1
    while idx2 < arr.length
      if (arr[idx1] + arr[idx2] == 0) && (arr[idx1] != arr[idx2])
        matches << [arr[idx1],arr[idx2]]
      end
      idx2 += 1
    end
    idx1 += 1
  end
  return matches
end


#83
def towers_of_hanoi
#Initalize Towers
tower_1 = [4,3,2,1]
tower_2 = []
tower_3 = []

#Initalize completed tower for comparsion
ordered_tower = [ 4, 3, 2, 1]

#Set up pairs for naming
#This is a hash of symbols and the tower arrays from above
towers = { tower_1: tower_1, tower_2: tower_2, tower_3: tower_3 }

#This is the same as the while loop but might be clearer
until (tower_2 == ordered_tower) || (tower_3 == ordered_tower)
   #Print using string interpolation
   print "tower_1 #{tower_1}"
   print "tower_2 #{tower_2}"
   print "tower_3 #{tower_3}"

   puts "Which tower would you like to select?"
   #changing the name to make it clear
   tower_input = gets.chomp.downcase

   #Take the input and look up the tower
   tower_source = towers[tower_input.to_sym]

   #As far as I'm aware we're only allowed to move the top disc?
   puts tower_source
   puts "Which disc would you like to move from this tower?"
   disc_input = gets.chomp

   print disc_input

   puts "Which tower would you like to move this disc?"
   target_input = gets.chomp.downcase
   tower_dest = towers[target_input.to_sym]

   #Take the element from the end of the target tower
   disc = tower_source.pop

   #Add the element we popped to the target tower
   tower_dest << disc
end

  puts "You win!"
end

#84


def new_factorial(n)
  (1..n).inject(:*)
end



#85


def my_transpose_columns_to_rows(columns)
  columns_length = columns.length
  
  rows = Array.new(columns_length) { Array.new }
  
  idx1 = 0
  while idx1 < columns.length
    row = columns[idx1]
    
    idx2 = 0
    while idx2 < row.length
      number = row[idx2]
      
      rows[idx2] << number
      
      idx2 += 1
    end
    
    idx1 += 1
  end
  
  return rows
  
end

#86

def my_transpose_rows_to_columns(rows)
  number_of_rows = rows.length
  
  columns = Array.new(number_of_rows) { Array.new }
  
  idx1 = 0
  while idx1 < rows.length
    row = rows[idx1]
    
    idx2 = 0
    while idx2 < row.length
      number = row[idx2]
      
      columns[idx2] << number
      
      idx2 += 1
    end
    
    idx1 += 1
  end
  
  return columns
end


#87

def count_vowels(string)

  return string.downcase.scan(/[aeiou]/).length
end


#88

def three_five_mults(num)
  sum = 0
  1.upto(num - 1) do |x|
    sum += x if x % 3 == 0 || x % 5 == 0
  end
  
  sum
end


#89

def even_fib_sum(num)
  fibs = [0,1]
  
  while fibs.last < num
    next_fib = fibs[-1] + fibs[-2]
    fibs << next_fib
  end
  
  return fibs.select {|x| x.even? }.inject(:+)
end


#90

def is_prime?(num)
  if num < 2
    return false
  end
  
  idx = 2
  while idx < num
    if num % idx == 0
      return false
    end
    idx += 1
  end
  
  return true
end

def factors(num)
  factor = []
  
  idx = 1
  while idx <= num
    if num % idx == 0
      factor << idx
    end
    idx += 1
  end
  
  return factor
end

def largest_prime_factor(num)
  factors(num).select {|x| is_prime?(x) }.max
end

#91

def pali?(num)
  return false if num.to_s.reverse != num.to_s
  return true
end

def largest_palindrome_product
  products = []
  num1 = 999
  while num1 > 900
    num2 = 999
    while num2 > 900
      product = num1 * num2
      
      products << product if pali?(product)
      
      num2 -= 1
    end
    num1 -= 1
  end
  
  return products.max
end

#92

def sum_of_squares(num)
  sum = 0
  
  (1..num).each do |x| 
    sum += x ** 2
  end
  
  sum
end

def square_of_sum(num)
  (1..num).reduce(:+) ** 2
end

def diff_btw_squares_and_sums(num)
  square_of_sum(num) - sum_of_squares(num)
end


#93

def nth_prime(num)
  count = 0
  
  idx = 2
  while true
    if is_prime?(idx)
      count += 1
      if count == num
        return idx
      end
    end
    idx += 1
  end
end

#94

def pythag_trips
  
  c = 3
  while c < 1000
    b = 2
    while b < c
      a = 1
      while a < b
        if (a + b + c == 1000) && (a ** 2 + b ** 2 == c ** 2)
          return [a*b*c]
        end
        a += 1
      end
      b += 1
    end
    c += 1
  end
end


#95

def prime_sum(num)
  sum = 0
  (1...num).each do |x| 
    sum += x if is_prime?(x)
  end
  
  sum
end


#96

def triangle_nums(num)
  triangles = []
  
  idx = 1
  while triangles.length <= num
    next_tri = (1..idx).reduce(:+)
    triangles << next_tri
    idx += 1
  end
  
  triangles.last
end

def tri_facts_over(num)
  
  idx = 1
  while true
    if factors(triangle_nums(idx)).size > num
      return triangle_nums(idx)
    end
    idx += 1
  end
end

p tri_facts_over(500)
    

  
  




  
  
  


    
    
      
  
    



  
  
        
    
  
  
      


  