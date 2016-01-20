#*****************FIRST_CODING_TEST*********************

#***********************1. reversed_string

def reversed_string(string)
  reversed = ""
  
  i = 0
  while i < string.length
    reversed = string[i] + reversed
    i += 1
  end
  
  return reversed
end

def reverse_one(string)
  reversed = ""
  
  i = 0
  while i < string.length
    reversed.prepend(string[i])
    i += 1
  end
  
  reversed
end

def reverse_four(string)
  reversed = []
  
  string.split('').each do |x|
    reversed.unshift(x)
  end
  
  reversed.join
end


#****************************2. factorial

def factorial(num)
  result = 1
  
  while num > 0
    result *= num
    num -= 1
  end
  
  return result
end

def new_factorial(n)
  (1..n).inject(:*)
end

def factorial_three(num)
  if num == 0
    1
  else
    num * factorial_three(num - 1)
  end
end

#******************************3. longest_word

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


def long_word(sentence)
  return sentence.split(' ').sort_by {|x| x.length }.last
end

def longest_word_one(string)
  string.gsub(/[^a-zA-Z\s]/i, '').split.sort_by(&:length).last
end

def longest_word_one(string)
  return "The longest word(s) are: #{string.split(' ').group_by(&:length).max.last.join(', ')}."
end

#*********************************4. sum_nums
def sum_nums(n)
  if n == 0
    n
  else
    n + sum_nums(n - 1)
  end
end

def sum_nums(num)
  result = 0
  
  while num > 0
    result += num
    num -= 1
  end
  
  return result 
end

 def sum_the_num(num)
 
  result = 0
  (num + 1).times do |x|
    result += x
  end

  return result 
end

def summing_nums(num)
  result = 0
  (0..num).each do |x|
    result += x
  end
  
  return result
end

def sum_numbers(num)

  result = 0
  0.upto(num) do |x|
    result += x
  end
  
  return result
end

def another_sum_num(num)

  result = 0
  for i in (0..num)
     result += i
  end
  
  return result
end
#******************************5. time_conversion

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

def time_conversion_two(minutes)
  hours = minutes / 60
  minutes = minutes % 60
  
  if minutes < 10
    minutes_s = "0" + minutes.to_s
  else
    minutes_s = minutes.to_s
  end
  
  return hours.to_s + ":" + minutes_s
end

#*****************************6. count_vowels

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

def count_vowels_two(string)
  string.scan(/[aeiou]/i).size
end


def count_vowels_three(string)
  string.split('').delete_if {|x| x =~ /[^aeiou]/i }.size
end
#*****************************************************7. palindrome?

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


def pali?(string)
  if string != string.reverse
    return false
  end
  return true
end

def palindrome?(string)
  string.gsub(/[^a-zA-Z]/,'') == string.gsub(/[^a-zA-Z]/,'').reverse ? true : false
end

#*****************************************8. nearby_az

def nearby_az(string)

  if string =~ /az|a.z|a..z/
    return true
  end
  
  return false
end

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

#***********************************9. two_sum

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

#kinda a joke, but works

def two_sum(num_arr)
  idx1 = 0
  while idx1 < num_arr.length
    if num_arr.include?(-(num_arr[idx1]))
      return [idx1,num_arr.index(-(num_arr[idx1]))]
    end
    idx1 += 1
  end
end
#**************************************10. power_of_two?

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


#*****************************************11. third_greatest

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

def third_great(num)

  return num.uniq.sort.rotate(-2).last
end

def third_greatest_longest_two(arr)
  sorted = arr.group_by(&:length).to_a
  return "The third longest word(s) are: #{sorted[-3][1].join(", ")}, (with a length of #{sorted[-3][0]})"
end


#************************************12. most_common_letter

def most_common_letter(string)
  frequency = Hash.new(0)
  return string.map {|x| frequency[x] += 1 }.sort_by {|x,y| y }.last
end

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

#****************************************13. dasherize

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

#****************************************14. scramble_string

def scramble_string(string,positions)

  result = ""
  
  i = 0
  while i < positions.length
    result += string[positions[i]]
    i += 1
  end
  
  return result
end

def scramble_two(string,positions)
  result = ""
  
  positions.each do |i|
    result += string[i]
  end
  
  result
end


#******************************15. is_prime?

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

#**********************************16. nth_prime

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

#***Primes_under***#

def primes_under(n)
  nums = (1..n).to_a

  i = 2
  while i < 10
    nums.delete_if {|x| x % i == 0 && x != i }
    i += 1
  end

  nums
end


def primes_under_two(n)
  nums = (1..n).to_a
  
  2.upto(9) do |i|
    nums.delete_if {|x| x % i == 0 && x != i }
  end
  nums
end


#*************************************17. longest_palindrome

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

#doesn't work for everything, but good to remember #combination and #flatten
def longest_pali(string)
  letters = string.gsub(/\W+/,'').split('')
  combos = []
  idx = 2
  while idx <= letters.length
    combos << letters.combination(idx).to_a
    idx += 1
  end
  longest = nil
  combos.flatten(1).each do |x|
    if (palindrome?(x.join(''))) && (longest == nil || x.length > longest.length)
      longest = x
    end
  end
  
  return longest.join('')
end


#*******************************18. greatest_common_factor

def scf(num1,num2)
  i = nil
  num1 >= num2 ? i = num1 : i = num2
  
  while true
    if i % num1 == 0 && i % num2 == 0
      return i
    end
    i += 1
  end
end


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


def factors(num)
  factors = []
  
  idx = 1
  while idx <= num
    if num % idx == 0
      factors << idx
    end
    idx += 1
  end
  
  factors
end


def factors_too(num)
  factors = []
  
  1.upto(num) do |x|
    factors << x if num % x == 0
  end
  factors
end


def gcf(num1,num2)
  (factors(num1) & factors(num2)).max
end


#**************************************19. caesar_cipher

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

def caesar_cipher(string,shift)
  
  letters = string.split('')
  
  shift.times do
    letters.map! {|letter| letter =~ /[a-yA-Y]/ ? letter = letter.succ : letter == "z" ? letter = "a" : letter == "Z" ? letter = "A" : letter = letter }
  end
  letters.join('')
end

def another_caesar(word,shift)
  arr = word.split('')
  
  shift.times do 
    arr.map! do |a|
      if a =~ /[a-yA-Y]/
        a = a.succ
      elsif a == "Z"
        a = "A"
      elsif a == "z"
        a = "a"
      else
        a = a
      end
    end
  end
  
  return arr.join('')
end
#****************************************20. num_repeats

def num_rep(string)
  frequency = Hash.new
  string.map {|x| frequency[x] += 1 }
  return frequency.select {|x,y| y > 1 }
end

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

def num_repeats_two(string)
  num_reps = []
  
  letters = string.split
  idx1 = 0
  while idx1 < string.length
    idx2 = 0
    count = 0
    while idx2 < string.length
      if string[idx1] == string[idx2]
        count += 1
      end
      idx2 += 1
    end
    
    if (count > 1) && (num_reps.include?(string[idx1]) == false)
      num_reps << string[idx1]
    end
    
    idx1 += 1
  end
  
  return num_reps.size
end
#**********************SECOND_CODING_TEST*********************

#*********************************21. nearest_larger 

def nearest_larger(arr,i)
  if arr.max == arr[i]
    return nil
  end
  
  left = i - 1
  right = i + 1
  while true
    if arr[left] > arr[i] && left >= 0
      return left
    elsif arr[right] > arr[i] && right < arr.length
      return right
    else
      left -= 1
      right += 1
    end
  end
end

#***************************************22-23. no_repeats

def no_rep?(year)
  reps = []
  
  year.to_s.split('').each do |x|
    if reps.include?(x)
      return false
    else 
      reps << x
    end
  end
  
  true
end

def no_repeat?(year)
  frequency = Hash.new(0)
  year.to_s.split('').map {|x| frequency[x] += 1}
  frequency.select {|x,y| y > 1 }.empty? ? true : false
end

def no_repeat?(year)
  frequency = Hash.new(0)    
  year.to_s.split('').map {|x| frequency[x] += 1 }   
  
  if frequency.select {|x,y| y > 1 }.empty? == true 
    return true                                     
  else
    return false
  end
end

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

#*************************************************24. letter_count(str)

def letter_count(str)
  no_space_arr = str.gsub(/\s+/,"").split('')   
  
  frequency = Hash.new(0)                       
  no_space_arr.map {|x| frequency[x] += 1 }
  
  return Hash[frequency.sort_by {|k,v| v}.reverse] 
end

#****************************************25-26. ordered_vowel_words(str)

def ordered_vowel_word?(word)
  
  if word.split('').delete_if {|x| x =~ /[^aeiou]/ } == word.split('').delete_if {|x| x =~ /[^aeiou]/ }.sort
    return true
  else
    return false
  end
end

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

#*****************************************27. wonky_coins

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

#************************************28-29. morse_code

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

#******************************************30. word_unscrambler

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

def word_unscrambler_two(word,dict)
  letters = word.split('').sort
  
  anagrams = []
  dict.each do |x| 
    anagrams << x if x.split('').sort == letters
  end
  
  anagrams
end

def word_unscrambler_three(word,dict)
  letters = word.split('').sort
  dict.select {|x| letters == x.split('').sort }
end
#*************************************31. rectangle_intersection

def rec_intersection(rect1, rect2)
  x_min = [rect1[0][0], rect2[0][0]].max
  x_max = [rect1[1][0], rect2[1][0]].min
  
  y_min = [rect1[0][1], rect2[0][1]].max
  y_max = [rect1[1][1], rect2[1][1]].min
  
  return nil if ((x_max < x_min) || (y_max < y_min))
  return [[x_min, y_min],[x_max, y_max]]
end

#******************************32. bubble_sort

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

#*******************************33. temperature_convertor

def temp_convertor(temp,string)
  if string =~ /f/
    return temp.to_f * (9.0 / 5) + 32
  else
    return (temp.to_f - 32) * (5.0 / 9)
  end
end
  

#**************************34 calculator that adds/subtracts/multiplies/divides

def add(num1,num2)
  num1 + num2
end

def subtract(num1,num2)
  num1 - num2
end

def divide(num1,num2)
  num1.to_f / num2
end

def multiply(num1,num2)
  num1 * num2
end

def calculate(action,num1,num2)
  case action
  when 'add'
    add(num1,num2)
  when 'subtract'
    subtract(num1,num2)
  when 'divide'
    divide(num1,num2)
  when 'multiply'
    multiply(num1,num2)
  end
end


#**************PROJECT_EULER*************************

#***************************35. three_five_mults

def three_five_mults(num)
  sum = 0
  1.upto(num - 1) do |x|
    sum += x if x % 3 == 0 || x % 5 == 0
  end
  
  sum
end

#**********************************36. even_fibs

def even_fib_sum(num)
  fibs = [0,1]
  
  while fibs.last < num
    next_fib = fibs[-1] + fibs[-2]
    fibs << next_fib
  end
  
  return fibs.select {|x| x.even? }.inject(:+)
end

#*******************************37. prime_factor

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

#****************************************38. largest_pali_product

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


#********************************************39. smallest_mult

def euler5

  count = 1

  while true
    num = 20 * count

    # This seems ridiculous but all my short solutions were causing stack overflow
    if num % 1 == 0 and num % 2 == 0 and num % 3 == 0 and num % 4 == 0 and num % 5 == 0 and num % 6 == 0 and num % 7 == 0 and num % 8 == 0 and num % 9 == 0 and num % 10 == 0 and num % 11 == 0 and num % 12 == 0 and num % 13 == 0 and num % 14 == 0 and num % 15 == 0 and num % 16 == 0 and num % 17 == 0 and num % 18 == 0 and num % 19 == 0 and num % 20 == 0
      return num
    end

    count += 1
  end

end

#*****************************************40. square_sum_diff

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
#******************************************41. large_series_product

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

#**************************************42. pythag_trip

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

#*************************************43. sum_of_primes(under n)

def prime_sum(num)
  sum = 0
  (1...num).each do |x| 
    sum += x if is_prime?(x)
  end
  
  sum
end

#**********************************44. largest_grid_product

def largest_grid_product(grid)
  sum = 0

# left and right
for x in 0..19
  for y in 0..16
    tmpSum = grid [x][y] * grid [x][y+1]
    tmpSum = tmpSum * grid [x] [y+2]
    tmpSum = tmpSum * grid [x] [y+3]
    sum = tmpSum if tmpSum > sum 
  end
end

# up and down
for x in 0..16
  for y in 0..19
    tmpSum = grid [x][y] * grid [x+1][y]
    tmpSum = tmpSum * grid [x+2] [y]
    tmpSum = tmpSum * grid [x+3] [y]
    sum = tmpSum if tmpSum > sum 
  end
end

#right diagonal
for x in 0..16
  for y in 0..16
    tmpSum = grid [x][y] * grid [x+1][y+1]
    tmpSum = tmpSum * grid [x+2] [y+2]
    tmpSum = tmpSum * grid [x+3] [y+3]
    sum = tmpSum if tmpSum > sum 
  end
end

#left diagonal
for x in 0..16
  for y in 0..16
    tmpSum = grid [x][y+3] * grid [x+1][y+2]
    tmpSum = tmpSum * grid [x+2] [y+1]
    tmpSum = tmpSum * grid [x+3] [y]
    sum = tmpSum if tmpSum > sum 
  end
end

sum
end


#********************************45-46. triangle_num_factors

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

#*****************************47. longest_collatz_sequence

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

#************************************48. grid_routes

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

#*******************************49. sum of the digits of 2 ** n

def two_to_sum(n)
  result = 2 ** n
  
  result.to_s.split('').map {|x| x.to_i }.reduce(:+)
end


#************************************50. counting_sundays
=begin
require 'date'
 
start = Date.new(1901, 1, 1)
endd = Date.new(2000, 12, 31)
c = 0
while start < endd do
  c += 1 if start.wday == 0
  start = start >> 1
end
puts c



months_with_thirty_days = [4, 6, 9, 11]
 
# 1/1/1900 is a Monday (2)
m, d, y, dw = 1, 1, 1900, 2
 
def leap_year? y
  return true if y % 400 == 0
  return false if y % 100 == 0 
  y % 4 == 0   
end
 
num_of_sundays = 0
 
while(y < 2001)
   # Keep track of Sundays starting in 1901
   num_of_sundays += 1 if (dw == 1 and d == 1 and y > 1900)
    
   #puts "#{(m)}/#{(d)}/#{(y)}, #{(dw)}" 
    
   dw += 1
   dw = 1 if dw == 8 # Reset to Sunday
       
   case d
    when 1..27
      d += 1
    when 28 && m == 2 && leap_year?(y)     
      d += 1
    when 28 && m == 2 && !leap_year?(y) 
      d, m = 1, 3       
    when 28
      d += 1     
    when 29 && m == 2
      d, m = 1, 3
    when 29
      d += 1     
    when 30 && months_with_thirty_days.include?(m)
      d, m = 1, d + 1     
    when 30
      d += 1     
    when 31
      d, m = 1, m + 1
      m, y = 1, y + 1 if m == 13 # Move to 1/1 for next year               
   end  
end 
=end

#**********************************51. sum of factorial digits

def fact_digit_sum(n)
  digits = (1..n).to_a.inject(:*)
  
  digits.to_s.split('').map {|x| x.to_i }.reduce(:+)
end

#**************************************52. amicable_numbers

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

#***********************************53. non_abundant_sums

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


#******************CODER_BYTE_EASY_PROBLEMS****************** 

#*********************************54. letter_changes

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

#**********************************55. simple_symbols


#**************************************56. ex_oh

def ExOh(str)

  return true if str.scan(/x/).size == str.scan(/o/).size
  return false      
         
end
#*****************************57. arith_geo

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
#************************************58. array_addition

def ArrayAdditionI(arr)
  arr = arr.sort
  biggest = arr.pop
  
  idx1 = 1
  while idx1 <= arr.length
    combos = arr.combination(idx1).to_a.map {|x| x.inject(:+) }
    
    idx2 = 0
    while idx2 < combos.length
      if combos[idx2] == biggest
        return true
      end
      idx2 += 1
    end
    idx1 += 1
  end
    
  return false
         
end

#*******************************59. division_stringified(num1,num2)

def DivisionStringified(num1,num2)

  
  result = num1/num2.to_f
  result = result.round.to_s.reverse
  
  if result.length <= 3
    return result.reverse
  elsif (result.length == 4 || result.length == 5 || result.length == 6)
    return result.insert(3,",").reverse
  elsif (result.length == 7 || result.length == 8 || result.length == 9)
    return result.insert(3,",").insert(7,",").reverse
  end
end

#**********************************60. counting_minutes

def CountingMinutesI(str)
  times = str.split('-')
  first_time  = convert(times[0])
  second_time = convert(times[1])
  
  h1 = first_time.split(':').first.to_i
  h2 = second_time.split(':').first.to_i
  
  m1 = first_time.split(':').last.to_i
  m2 = second_time.split(':').last.to_i
  
  diff = (h2 - h1) * 60 + (m2 - m1)
  
  diff < 0 ? 24 * 60 + diff : diff
end

def convert(time)
  hours   = time.split(':').first.to_i
  minutes = time.split(':').last[0,2].to_i
  
  case hours
  when 12
    hours -= 12 if time.include?('am')
  when 1..11
    hours += 12 if time.include?('pm')
  end
  
  "#{hours}:#{minutes}"    
end

#***************************61. mean_mode

def MeanMode(arr)
  frequency = arr.inject(Hash.new(0)) {|h,v| h[v] += 1; h }
  mode = arr.max_by {|v| frequency[v] }
  mean = arr.reduce(:+) / arr.length
  
  if mode == mean
    return 1
  else
    return 0
  end
end

#********************************62. number_search

def NumberAddition(str)
  if str =~ /\d/
    numsonly = str.scan(/\d+/).map {|x| x.to_i }
    return numsonly.inject {|sum,x| sum + x }
  else
    return 0
  end
  
end

#************************************63. additive_persistence

def AdditivePersistence(num)
  counter = 0
  while true
    if num.to_s.length == 1
      return counter
    else
      num = num.to_s.split('').map {|x| x.to_i}.inject(:+)
      counter += 1
    end
  end
  # code goes here
  return counter
         
end

#*****************************64. multiplicative_persistence

def MultiplicativePersistence(num)
  counter = 0
  while true
    if num.to_s.length == 1
      return counter
    else
      num = num.to_s.split('').map {|x| x.to_i }.inject(:*)
      counter += 1
    end
  end
  # code goes here
  return counter 
         
end

#*******************************65. offline_minimum



#************CODER_BYTE_MEDIUM_PROBLEMS**************


#**************************66. run_length

#******************************67. letter_count

def LetterCount(str)
  words = str.split(' ')
  num_repeats = nil
  best_word = nil
  
  idx = 0
  while idx < words.length
    word = words[idx]
    count = 0
    
    word_freq = Hash.new(0)
    word.split('').map {|x| word_freq[x] += 1 }
    if word_freq.select {|x,y| y > 1 }.empty?
      idx += 1
      next
    else
      count += word_freq.select {|x,y| y > 1 }.size
    end
    
    if num_repeats == nil || count > num_repeats
      num_repeats = count
      best_word = word
    end
    
    idx += 1
  end
  
  if num_repeats == nil
    return -1
  else
    return best_word
  end
end

#*********************************68. simple_mode

def SimpleMode(arr)
  frequency = Hash.new(0)
  arr.map {|x| frequency[x] += 1 }
  
  if frequency.select {|x,y| y > 1 }.empty?
    return -1
  end
  
  
  biggest = frequency.max_by {|x,y| y }
  
  return biggest[0]
  
end

#***************************69. consecutive

def Consecutive(arr)
  sorted_arr = arr.sort.uniq
  
  numbers_needed = 0
  
  idx = 0
  while (idx + 1) < sorted_arr.length
    
    if sorted_arr[idx] > sorted_arr[idx + 1]
      numbers_needed += ((sorted_arr[idx] - sorted_arr[idx + 1]) - 1)
    else
      numbers_needed += ((sorted_arr[idx + 1] - sorted_arr[idx]) - 1)
    end
    
    idx += 1
  end
  
  return numbers_needed
end

#*******************************70. formatted_division

def FormattedDivision(num1,num2)
  result = ""
  quotient = sprintf "%.4f", (num1.to_f / num2)
  
  q_parts = quotient.split('.')
  num = q_parts[0].split('').reverse
  
  idx = 0
  while idx < num.length
    if (idx % 3 == 0) && (idx != num.length) && (idx != 0)
      result += ","
    end
    result += num[idx].to_s
    idx += 1
  end
  
  return result.reverse + "." + q_parts[1].to_s
         
end

#***************************71. permutation_step

def PermutationStep(num)
  num_array = num.to_s.split('').map {|x| x.to_i}
  perms = num_array.permutation(num_array.length).to_a.map {|x| x.join }.map {|x| x.to_i }.uniq.sort
  
  num_index = perms.index(num)
  if perms.last == num
    return -1
  else
    return perms[num_index + 1].to_s
  end
         
end

def PermStep(num)
  i = 2
  string = num.to_s
  
  while i <= string.size
    array = string.split('')
    compare_nums = array.pop(i)
    i += 1
    next if compare_nums.join >= compare_nums.sort.reverse.join  
    first = compare_nums[0]
    nextt = ""
    idx = 0
    compare_nums.sort!
    compare_nums.each_with_index{|num, index| next if num <= first; nextt = num;idx = index; break}
    compare_nums.delete_at(idx)
    return array.join + nextt + compare_nums.join
  end
  -1
end

def PermutationStep(num)

  str = num.to_s.split('').reverse
  
  for i in 0..str.length-2 
    if str[i] > str[i+1]
      str[i],str[i+1]=str[i+1],str[i]
      return (str[0,i+1].sort.reverse + str[i+1,str.length]).join.reverse
    end
  end
  return -1

         
end

#****************************72. prime_checker

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

def PrimeChecker(num)
  num_arr = num.to_s.split('').permutation.to_a.map {|x| x.join('').to_i }.flatten
  
  idx = 0
  while idx < num_arr.length
    if is_prime?(num_arr[idx])
      return 1
    end
    idx += 1
  end
  return 0
         
end#**********************************73. dash_insert_two

#*****************************74. swap_two

#****************************75. number_search

def NumberSearch(str)

  num_sum = str.scan(/(\d)/).flatten.map {|x| x.to_i }.inject(:+)
  letter_count = str.scan(/[a-zA-Z]/).length
  
  return (num_sum.to_f/letter_count).round
  
end

#************************************76. triple_double

def TripleDouble(num1,num2)

  num1_arr = num1.to_s.split('').map {|x| x.to_i }
  num2_arr = num2.to_s.split('').map {|x| x.to_i }
  
  num1_trips = []
  num2_dubs = []
  
  idx1 = 0
  while (idx1 + 2) <= num1_arr.length
    if (num1_arr[idx1] == num1_arr[idx1 + 1]) &&( num1_arr[idx1] == num1_arr[idx1 + 2]) && (num1_arr[idx1] != num1_arr[idx1 + 3])
      num1_trips << num1_arr[idx1]
    end
    idx1 += 1
  end
  
  idx2 = 0
  while (idx2 + 1) <= num2_arr.length
    if num2_arr[idx2] == num2_arr[idx2 + 1]
      num2_dubs << num2_arr[idx2]
    end
    idx2 += 1
  end
  
  idx3 = 0
  while idx3 < num2_dubs.length
    if num1_trips.uniq.include?(num2_dubs[idx3])
      return 1
    end
    idx3 += 1
  end
  return 0
         
end

#*******************************77. bracket_matcher

#**************************************78. coin_determiner

#********************************79. fib_checker

def FibonacciChecker(num)

  fibs = [0,1]
  
  while fibs.last <= num
    next_fib = fibs[-1] + fibs[-2]
    fibs << next_fib
  end
  
  if fibs.include?(num)
    return "yes"
  else
    return "no"
  end
         
end

#***************************80. look_say_sequence

#************************************81. distinct_list

def DistinctList(arr)

  return arr.size - arr.uniq.size
         
end


#**************CODING_TEST_TWO_PROBLEMS****************


#************************************82. Ordered words

def ordered_word?(string)
  string.split('') == string.split('').sort ? true : false
end

def ordered_vowel_word?(word)
  
  if word.split('').delete_if {|x| x =~ /[^aeiou]/ } == word.split('').delete_if {|x| x =~ /[^aeiou]/ }.sort
    return true
  else
    return false
  end
end

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

#*************************************83. String encoding

def encrypt(str)
  result = ""
  
  idx1 = 0
  while idx1 < str.length
    letter = str[idx1]
    
    if idx1 > 0
      prev_letter = str[idx1 - 1]
      if prev_letter != letter
        result += "-"
      end
    end
    result += letter
    idx1 += 1
  end
  
  groups = result.split("-")
  encoded = Array.new(groups.length) { Array.new }
  
  idx2 = 0
  while idx2 < groups.length
    encoded[idx2] << groups[idx2][0]
    encoded[idx2] << groups[idx2].size
    idx2 += 1
  end
  
  encoded
    
end
    
  
def encrypt_alternate(str)
  groups = str.scan(/((\w)\2*)/)
  encoded = Array.new(groups.length) { Array.new }
  
  idx = 0
  while idx < groups.length
    encoded[idx] << groups[idx][1]
    encoded[idx] << groups[idx][0].size
    idx += 1
  end
  
  
  encoded
end

#*****************************************84. Nearby words

def one_off_words(str, word_list)
  one_offs = []
  words = word_list.keep_if {|word| word.length == str.length }
  idx1 = 0
  while idx1 < words.length
    word = words[idx1]
    errors = 0
    
    idx2 = 0
    while idx2 < word.length
      if word[idx2] != str[idx2]
        errors += 1
      end
      idx2 += 1
    end
    
    if errors == 1
      one_offs << word
    end
    
    idx1 += 1
  end
  
  one_offs
end


#*********SORTING PROBLEMS**********************

#*******************************85. Insertion sort-swap

def insertion_sort_one(arr)
  1.upto(arr.length - 1) do |i|
    value = arr[i]
    j = i - 1
    while j >= 0 and arr[j] > value
      arr[j + 1] = arr[j]
      j -= 1
    end
    arr[j + 1] = value
  end
  arr
end

#*****************************86. Insertion sort-remove &insert

def insertion_sort_two(arr)
  1.upto(arr.length - 1) do |i|
    value = arr.delete_at(i)
    j = i - 1
    j -= 1 while j >= 0 && value < arr[j]
    arr.insert(j + 1, value)
  end
  arr
end

#*********************************87-88. Selection sort'

def selection_sort_one(arr)
  new_arr = []
  
  arr.length.times do 
    new_arr << arr.min
    arr.delete(arr.min)
  end
  
  return new_arr
end

def selection_sort_two(arr)
  n = arr.size - 1
  
  n.times do |i|
    index_min = i
    
    (i + 1).upto(n) do |j|
      index_min = j if arr[j] < arr[index_min]
    end
    
    arr[i], arr[index_min] = arr[index_min], arr[i] if index_min != i
  end
  arr
end

#**************************************89. merge_sort

def mergesort(list)
  return list if list.size <= 1
  mid   = list.size / 2
  left  = list[0, mid]
  right = list[mid, list.size]
  merge(mergesort(left), mergesort(right))
end

def merge(left, right)
  sorted = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted << left.shift
    else
      sorted << right.shift
    end
  end
  sorted.concat(left).concat(right)
end


#*************MINI_CURRICULUM_PROBLEMS***************

#*********************************90. my_uniq

def my_uniq(arr)
  uniq_array = []
  
  frequency = Hash.new(0)
  arr.map {|x| x.to_s}.map {|x| frequency[x] += 1 }
  
  uniq_array << frequency.keys.map {|x| x.to_i }
  
  return uniq_array
end

#************************************91. towers_of_hanoi

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


#******************************************92. my_transpose

def my_transpose(matrix)
  new_matrix = Array.new(matrix.length) { Array.new }
  
  idx1 = 0
  while idx1 < matrix.length
    row = matrix[idx1]
    
    idx2 = 0
    while idx2 < row.length
      new_matrix[idx2] << row[idx2]
      idx2 += 1
    end
    idx1 += 1
  end
  
  new_matrix
end


#******************************93. num_to_s(num,base)

def convert_to_base(base_ten_num, base)
  result = ""
  
  case base
  
  when 1 then result += "1" * base_ten_num
  when 2..14
  
    while true
      quotient = base_ten_num / base
      remainder = base_ten_num % base
    
      if quotient == 0
        result += remainder.to_s
        return result.reverse
      else
        result += remainder.to_s
        base_ten_num = quotient
      end
    end
  end
end

#**************************************94. hash_offset

def hash_correct(wrong_hash)
  hash_keys = []
  wrong_hash.map {|x,y| hash_keys << y }
  
  right_hash = {}
  
  idx = 0
  while idx < hash_keys.length
    hash_keys.map {|x| right_hash[x[0].to_sym] = x }
    idx += 1
  end
  
  return right_hash
end


def hash_correct(wrong_hash)
  hash_vals = wrong_hash.values
  
  correct_hash = {}
  
  hash_vals.map {|x| correct_hash[x[0].to_sym] = x }
  
  return correct_hash
end 
#******************************************95. median

def median(int_arr)
  sorted = int_arr.sort
  size = int_arr.size
  
  if size.odd?
    return sorted[(size / 2)]
  elsif size.even?
    return ((sorted[(size / 2)] + sorted[((size / 2) - 1)]) / 2.0 )
  end
  
end

#********************************96. string_concat

def combine_strings(string_arr)
  return string_arr.inject(:+)
end

#************************************97. substrings

def substrings(string)
  substrings = []
  
  i = 0
  while i < string.length
    length = 1
    while (i + length) <= string.length
      substring = string.slice(i,length)
      
      substrings << substring
      
      length += 1
    end
    i += 1
  end
  
  return substrings
end

#*****************************************98 rock_paper_scissors

def rps(string)
  user_choice = string.downcase
  comp_choice = ["rock","paper","scissors"].sample
  
  case user_choice
  when "rock"
    if comp_choice == "rock"
      return "Rock, Draw"
    elsif comp_choice == "paper"
      return "Paper, Lose"
    elsif comp_choice == "scissors"
      return "Scissors, Win"
    end
  when "paper"
    if comp_choice == "rock"
      return "Rock, Win"
    elsif comp_choice == "paper"
      return "Paper, Draw"
    elsif comp_choice == "scissors"
      return "Scissors, Lose"
    end
  when "scissors"
    if comp_choice == "rock"
      return "Rock, Lose"
    elsif comp_choice == "paper"
      return "Paper, Win"
    elsif comp_choice == "scissors"
      return "Scissors, Draw"
    end
  end
end

#*********************************99. swingers

def swingers(arr)
  new_pairs = Array.new(arr.length) { Array.new }

  idx1 = 0
  while idx1 < arr.length
    pair = arr[idx1]
    
    new_pairs[idx1] << pair[0]
    
    idx1 += 1
  end
  
  idx2 = 0
  while idx2 < arr.length
    pair = arr[idx2]
    
    if idx2 == (arr.length - 1)
      new_pairs[0] << pair[1]
    else
      new_pairs[idx2 + 1] << pair[1]
    end
    
    idx2 += 1
  end
  
  return new_pairs
    
end


def swap(arr)
  swing = arr.flatten.rotate
  
  new_couples = []
  while swing.empty? == false
    new_couples << swing.slice!(0,2)
  end
  
  return new_couples
end

#****************RECURSION_PROBLEMS****************

#********************************100. binary_search

def bsearch(array, target)
  search_location = (array.size)/2

  if array[search_location] == target
    return search_location
  elsif array[search_location] > target
    return bsearch(array[0..search_location-1], target)
  else
    return search_location + bsearch(array[search_location..-1], target)
  end
end

def binary_search(array,value)
  i_mid = (array.length - 1) / 2
  if array[i_mid] < value
    return binary_search(array[i_mid..-1], value) + i_mid
  elsif array[i_mid] > value
    return binary_search(array[0..i_mid], value)
  else
    puts "we found it!"
    return i_mid
  end
end

#************************101. fibonacci up to n
def fib(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  else
    one_less = fib(n-1)
    one_less << one_less[-1] + one_less[-2]
    return one_less
  end

end


def fib(n)
  return [1] if n == 1
  return [1,1] if n == 2
  x = fib(n - 1)
  x + [x[-1] + x[-2]]
end

def fib2(n)
  return [1] if n == 1
  return [1,1] if n == 2
  result = [1,1]
  (n-2).times do
    result << result[-1] + result[-2]
  end
  result
end
#*******************************102. rock_judger (recursion and iterative)
# Iteration

def heaviest_rock(rock_array)
  max_rock = 0

  rocks.each do |rock|
    max_rock = rock if max_rock < rock 
  end
end

def heaviest_rock_two(rock_array)
  rocks.inject{|max_rock, rock| max_rock > rock ? max_rock : rock}
end

def rock_judger(rocks_arr)    
    if rocks_arr.length <= 2  # the base case
      a = rocks_arr[0]
      b = rocks_arr[-1]
    else
      a = rock_judger(rocks_arr.slice!(0,rocks_arr.length/2))
      b = rock_judger(rocks_arr)
    end    
    
    return a > b ? a : b
end


def rock_judger_two(rocks_arr)     
    count = rocks_arr.length
    a,b =  count <= 2 ? [rocks_arr[0], rocks_arr[-1]] : [rock_judger(rocks_arr.pop(count/2)), rock_judger(r_arr)]
    return a > b ? a : b
end


#*****************CODING_TEST_ONE_PROBLEMS*************

#************************103. lucky_sevens?(numbers)

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

#************************104. oddball_sum(numbers)

def oddball_sum(numbers)

  result = numbers.select{|x| x.odd? }.reduce(:+)
  
  if result != nil
    return result
  else
    return 0
  end
  
end

#*************************105. disemvowel(string)

def disemvowel(string)
  
  return string.gsub(/[aeiou]/i,"")
end



#*************RANDOM_PROBLEMS****************


#************************106. fizzbuzz
def fizzbuzz(num)
  (1..num).each do |n|
      puts(
         n % 15 == 0 ? 'FizzBuzz' :
         n % 5 == 0  ? 'Buzz' :
         n % 3 == 0  ? 'Fizz' : n
      )
  end
end


#*************************107 capitalize

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

def capitals_two(string)

  words = string.split(' ')
  
  words.each do |word|
    word[0] = word[0].upcase
  end
  
  words.join(' ')
end

#**************************108 perfect squares

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


#*****************************109 division_without_dividing

def division_without_dividing(dividend,divisor)
  quotient = 0
  start = 0
  while divisor <= dividend
    if (start + divisor) > dividend
      return quotient
    else
      start += divisor
      quotient += 1
    end
  end
  quotient
end

#*******************************110 pig_latin

def pig_latin(string)
  words = string.split(' ')
  
  idx1 = 0
  while idx1 < words.length
    word = words[idx1]
    
    if word[0] =~ /[aeiou]/
      words[idx1] = word + "ay"
    elsif (word[0] =~ /[^aeiou]/ ) && (word[1] == "q") && (word[2] == "u")
      front = word.slice!(0,3)
      words[idx1] = word + front + "ay"
    elsif (word[0] == "s") && (word[1] == "c") && (word[2] == "h")
      front = word.slice!(0,3)
      words[idx1] = word + front + "ay" 
    elsif (word[0] =~ /[^aeiou]/) && (word[1] =~ /[^aeiou]/) && (word[2] =~ /[^aeiou]/)
      front = word.slice!(0,3)
      words[idx1] = word + front + "ay"
    elsif (word[0] == "q") && (word[1] == "u")
      front = word.slice!(0,2)
      words[idx1] = word + front + "ay"
    elsif (word[0] =~ /[^aeiou]/) && (word[1] =~ /[^aeiou]/)
      front = word.slice!(0,2)
      words[idx1] = word + front + "ay"
    else
      front = word.slice!(0,1)
      words[idx1] = word + front + "ay"
    end
    
    idx1 += 1
  end
  
  return words.join(' ')
end



