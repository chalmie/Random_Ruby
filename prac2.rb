=begin
Ordered words
Both Ruby and Python let you compare letters: "a" < "z" returns true. Write a method, ordered_word?, which returns whether the letters in a word occur in alphabetical order. Assume the string contains only lowercase letters with no spaces or punctuation.

ordered_word?("amz") == true
ordered_word?("zma") == false
ordered_word?("aa") == true # repeats okay
String encoding
Write a method named encrypt(str) which takes in a string and returns an array of pairs: each pair contains the next distinct letter in the string, and the number consecutive repeats.

encrypt("aaabbcbbaaa") ==
  [["a", 3], ["b", 2], ["c", 1], ["b", 2], ["a", 3]]
encrypt("aaaaaaaaaa") == [["a", 10]]
encrypt("") == []
Be careful! You don't just want the overall count of each letter: encrypt("aaabbcbbaaa") != [["a", 6], ["b", 4], ["c", 1]]. So make sure to count consecutive letters, not their overall count.

Lastly, a common error is to forget to encrypt the last tokens. Make sure that encrypt("aabbcc") == [["a", 2], ["b", 2], ["c", 2]], not [["a", 2], ["b", 2]].

Nearby words
Write a method named one_off_words(str, word_list) which takes in a string and an array of valid words (the word_list). It should return an array of words from the word_list which are the same except for a single letter at a single position.

Do not return words of that differ in length from str.

For instance, "boot" and "boom" are nearby (differ in 4th letter), but "loot" and "tool" are not (differ in first and fourth letters). Note that position matters.

Here's an example of the method:

WORDS = ["door", "moot", "boot", "boots"]
one_off_words("moor", WORDS) == ["door", "moot"]
You may assume that the input string and word list contain only lower case letters.
=end


def ordered_word?(string)
  string.split('') == string.split('').sort ? true : false
end


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

      
 
#Practice Problems

#1 Insertion sort-swap

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



#2 Insertion sort-remove&insert

def insertion_sort_two(arr)
  1.upto(arr.length - 1) do |i|
    value = arr.delete_at(i)
    j = i - 1
    j -= 1 while j >= 0 && value < arr[j]
    arr.insert(j + 1, value)
  end
  arr
end

#3 selection_sort

def selection_sort_one(arr)
  new_arr = []
  
  arr.length.times do 
    new_arr << arr.min
    arr.delete(arr.min)
  end
  
  return new_arr
end


#4 selection_sort

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


#5 division with /

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


#6 merge sort

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

###################################################

#1 

def reverse_one(string)
  reversed = ""
  
  i = 0
  while i < string.length
    reversed.prepend(string[i])
    i += 1
  end
  
  reversed
end

#2

def reverse_two(string)
  reversed = ""
  
  i = 0
  while i < string.length
    reversed = string[i] + reversed
    i += 1
  end
  
  reversed
end

#3

def reverse_three(string)
  string.reverse
end

#4

def reverse_four(string)
  reversed = []
  
  string.split.each do |x|
    reversed.unshift(x)
  end
  
  reversed.join
end

#5

def factorial_one(num)
  if num < 0
    return nil
  end
  
  result = 1
  while num > 0
    result *= num
    num -= 1
  end
  
  result
end

#6

def factorial_two(num)
  (1..num).inject(:*)
end

#7

def factorial_three(num)
  if num == 0
    1
  else
    num * factorial_three(num - 1)
  end
end

#8

def longest_word_one(string)
  words = string.gsub(/\?|\.|!|,/,'').split.sort_by(&:length)
end


#9
  
def longest_word_two(string)
  longest = nil
  words = string.gsub(/\?|\.|!|,/,"").split(' ')
  
  idx = 0
  while idx < words.length
    current_word = words[idx]
    
    if longest == nil || current_word.length > longest.length
      longest = current_word
    end
    
    idx += 1
  end
  
  longest
end

#10

def sum_nums_one(num)
  if num == 0
    0
  else
    num + sum_nums(num - 1)
  end
end

#11

def sum_nums_two(num)
  result = 0
  
  while num > 0
    result += num
    num -= 1
  end
  
  result 
end

#12

def sum_nums_three(num)
  (1..num).reduce(:+)
end

#13

def time_conversion_one(minutes)
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

#14

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

#15

def count_vowels_one(string)
  num_vowels = 0
  
  idx = 0
  while idx < string.length
    if string[idx] =~ /[aeiou]/i
      num_vowels += 1
    end
    idx += 1
  end
  
  num_vowels
end

#16

def count_vowels_two(string)
  string.scan(/[aeiou]/i).size
end

#17

def count_vowels_three(string)
  string.split('').delete_if {|x| x =~ /[^aeiou]/i }.size
end

#18

def palindrome?(string)
  string.gsub(/[^a-zA-Z]/,'') == string.gsub(/[^a-zA-Z]/,'').reverse ? true : false
end

#19

def nearby_az_one(string)
  string =~ /az|a.z|a..z/i ? true : false
end


#20

def nearby_az_two(string)
  
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

#21

def two_sum(arr)
  idx1 = 0
  while idx1 < arr.length
    idx2 = 0
    while idx2 < arr.length
      if arr[idx1] + arr[idx2] == 0 && arr[idx1] != arr[idx2]
        return arr[idx1],arr[idx2]
      end
      idx2 += 1
    end
    idx1 += 1
  end
  nil
end

#22

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


#23

def pow_of_two?(num)
  idx = 0
  while 2 ** idx <= num
    if 2 ** idx == num
      return true
    end
    idx += 1
  end
  
  false
end

#24

def third_greatest(arr)
  arr.uniq.sort.rotate(-2).last
end

#25

def third_greatest_two(arr)
  first = nil
  second = nil
  third = nil
  
  idx = 0
  while idx < arr.length
    num = arr[idx]
    
    if first == nil || num > first
      third = second
      second = first
      first = num
    elsif second == nil || num > second
      third = second
      second = num
    elsif third == nil || num > third
      third = num
    end
    
    idx += 1
  end
  
  third
end

#26 

def third_greatest_longest(arr)
  frequency = Hash.new
  arr.map do |word|
    frequency[word.length] ||= []
    frequency[word.length] << word
  end
  sorted_arr = frequency.to_a
  return sorted_arr[-3]
end

#27

def third_greatest_longest_two(arr)
  sorted = arr.group_by(&:length).to_a
  return "The third longest word(s) are: #{sorted[-3][1].join(", ")}, (with a length of #{sorted[-3][0]})"
end


#28

def most_common_letter(string)
   frequency = Hash.new(0)
   string.split('').map {|let| frequency[let] += 1}
   frequency.sort_by {|x,y| y}.last
end

#29

def most_common_letter_two(string)
  most_common_letter = nil
  most_common_letter_count = nil
  
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
    
    if most_common_letter_count == nil || count > most_common_letter_count
      most_common_letter = letter
      most_common_letter_count = count
    end
    
    idx1 += 1
  end
  
  return [most_common_letter,most_common_letter_count]
end


#30

def dasherize(num)
  num_s = num.to_s
  
  dashed = ""
  
  idx = 0
  while idx < num_s.length
    digit = num_s[idx].to_i
    
    if (idx > 0)
      prev_digit = num_s[idx - 1].to_i
      
      if prev_digit % 2 == 1 && digit % 2 == 1
        dashed += "-"
      end
    end
    dashed += num_s[idx]
    idx += 1
  end
  
  dashed
end

#31

def dasherize_two(num)
  num_arr = num.to_s.split('').map {|x| x.to_i}
  dashed = ""
  idx = 0
  while idx < num_arr.length
    if (idx > 0) && num_arr[idx] % 2 == 1 && num_arr[idx - 1] % 2 == 1
      dashed += "-"
    end
    dashed += num_arr[idx].to_s
    idx += 1
  end
  dashed
end


#32

def capitals(string)
  words = string.split(' ')
  
  idx = 0
  while idx < words.length
    word = words[idx]
    
    word[0] = word[0].upcase
    
    idx += 1
  end
  
  words.join(' ')
end

#33

def capitals_two(string)

  words = string.split(' ')
  
  words.each do |word|
    word[0] = word[0].upcase
  end
  
  words.join(' ')
end

#34

def scramble_string(string,positions)
  result = ""
  
  idx = 0
  while idx < positions.length
    result += string[positions[idx]]
    idx += 1
  end
  
  result
end

#35

def scramble_two(string,positions)
  result = ""
  
  positions.each do |i|
    result += string[i]
  end
  
  result
end

#36

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
  
  true
end

#37

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
    
#38

def longest_palindrome(string)
  str = string.gsub(/\W+/,'')
  longest = nil
  
  idx1 = 0
  while idx1 < str.length
    length = 1
    while (idx1 + length) <= str.length
      substring = str.slice(idx1,length)
      
      if (palindrome?(substring)) && (longest == nil || substring.length > longest.length)
        longest = substring
      end
      
      length += 1
    end
    idx1 += 1
  end
  
  longest
end

#39

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


#40

def greatest_common_factor(num1,num2)
  i = nil
  if num1 <= num2
    i = num1
  else
    i = num2
  end
  
  while true
    if (num1 % i == 0) && (num2 % i == 0)
      return i
    end
    i -= 1
  end
end


#41

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

#42

def factors_too(num)
  factors = []
  
  1.upto(num) do |x|
    factors << x if num % x == 0
  end
  factors
end

#43

def gcf(num1,num2)
  (factors(num1) & factors(num2)).max
end

#44

def caesar_cipher(string,shift)
  
  letters = string.split('')
  
  shift.times do
    letters.map! {|letter| letter =~ /[a-yA-Y]/ ? letter = letter.succ : letter == "z" ? letter = "a" : letter == "Z" ? letter = "A" : letter = letter }
  end
  letters.join('')
end

#45

def caesar_cipher_two(string,shift)
  words = string.split('')
  
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
        
        new_letter = (letter+ shift) % 26
        
        word[idx2] = (new_letter + "A".ord).chr
      else
        letter = letter
      end
      
      idx2 += 1
    end
    idx1 += 1
  end
  
  words.join('')
end


#46

def num_repeats(string)
  frequency = Hash.new(0)
  string.split('').map {|x| frequency[x] += 1 }
  frequency.select {|x,y| y > 1 }.size
end

#47

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

#48

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

#49

def no_repeat?(year)
  frequency = Hash.new(0)
  year.to_s.split('').map {|x| frequency[x] += 1}
  frequency.select {|x,y| y > 1 }.empty? ? true : false
end

#50

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

#51

def no_repeats(year_start,year_end)
  no_reps = []
  
  (year_start..year_end).each do |x|
    no_reps << x if no_rep?(x)
  end
  
  no_reps
end

#51

def no_repeats_two(year_start,year_end)
  years = (year_start..year_end).to_a
  no_reps = []
  
  idx = 0
  while idx < years.length
    if no_rep?(years[idx])
      no_reps << years[idx]
    end
    idx += 1
  end
  
  no_reps
end


#52

def letter_count(string)
  freq = Hash.new(0)
  string.split('').map {|letter| frequency[letter] += 1 }
  freq
end

#53

def ordered_vowel_word?(word)
  word.split('').select {|x| x =~ /[aeiou]/i } == word.split('').select {|x| x =~ /[aeiou]/i }.sort ? true : false
end

#54

def ordered_vowel_words(string)
  words = string.split(' ')
  ordered = []
  words.each do |word|
    ordered << word if ordered_vowel_word?(word)
  end
  ordered.join(' ')
end

#55

def wonky_coins(value)
  return 1 if value == 0
  
  return wonky_coins(value/2) + wonky_coins(value/3) + wonky_coins(value/4)
end

#56

def wonky_coins_two(value)
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
        returned_coins << coin
      else
        returned_coins << coin / 2
        returned_coins << coin / 3
        returned_coins << coin / 3
      end
      
      idx += 1
    end
    coins = returned_coins
  end
end

#57

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
  "z" => "--.."
}

  result = []
  word.split('').map {|x| result << morse[x] }

  result.join(' ')
end

#58

def morse_encode(string)
  result = []
  words = string.split(' ')
  words.each do |x|
    result << morse_encode_word(x)
  end
  
  result.join('  ')
end

#59

def word_unscrambler(word,dict)
  word_freq = Hash.new(0)
  word.split('').map {|x| word_freq[x] += 1 }
  
  dict_frequencies = []
  dict.each do |x|
    dict_freq = Hash.new(0)
    x.split('').map {|x| dict_freq[x] += 1 }
    dict_frequencies << dict_freq
  end
  
  matches = []
  idx = 0
  while idx < dict_frequencies.length
    if dict_frequencies[idx] == word_freq
      matches << dict[idx]
    end
    idx += 1
  end
  
  
  matches
end

#60

def word_unscrambler_two(word,dict)
  letters = word.split('').sort
  
  anagrams = []
  dict.each do |x| 
    anagrams << x if x.split('').sort == letters
  end
  
  anagrams
end

#61

def word_unscrambler_three(word,dict)
  letters = word.split('').sort
  dict.select {|x| letters == x.split('').sort }
end

#61

def bubble_sort(arr)
  sorted = false
  until sorted
    sorted = true
    (arr.count - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i],arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end
    end
  end
  
  arr
end

#62

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

#64

def n_primes(n)
  primes = []
  count = 0
  
  if n == 0
    return primes
  end
  
  idx = 1
  while true
    if is_prime?(idx)
      primes << idx
      count += 1
      if count == n
        return primes
      end
    end
    idx += 1
  end
end

#65

def factorials_rec(n)
  facts = (1..n).to_a
  result = []
  
  facts.each do |x|
    result << factorial_three(x)
  end
  
  result
end

#66 

def factorials_rec_two(n)
  