# Beginning Ruby Exercises
# Wasn't sure what qualified as an exercise, so 
# I started with Ch.2 - The Making of a Man

# Ch. 2
# The Making of a Man

class Person
  attr_accessor :name, :age, :gender
end

person_instance = Person.new
person_instance.name = "Robert"
person_instance.age = 52
person_instance.gender = "male"

p person_instance.name


# From People to Pets

class Cat
  attr_accessor :name, :age, :gender, :color
end

class Dog
  attr_accessor :name, :age, :gender, :color
end

class Snake
  attr_accessor :name, :age, :gender, :color
end

lassie = Dog.new
sammy = Snake.new
lassie.age = 12
sammy.color = "Green"


# Structuring Your Pets Logically

class Pet
  attr_accessor :name, :age, :gender, :color
end

class Cat < Pet
end

class Dog < Pet
end

class Snake < Pet
  attr_accessor :length
end

snake = Snake.new
snake.name = "Sammy"
snake.length = 500
lassie = Dog.new
lassie.name = "Lassie"
lassie.age = 20
lassie.length = 10


# Controlling Your Pets

class Dog < Pet
  def bark
    puts "Woof!"
  end
end

a_dog = Dog.new
a_dog.bark


# Using the Methods of the String Class

puts "This is a test".length
puts "This is a test".upcase
p "Test" + "Test"
p "Test".capitalize 
p "Test".downcase
p "Test".chop 
p "Test".next
p "Test".reverse
p "Test".sum
p "Test".swapcase
p "Test".upcase
p "Test".upcase.reverse
p "Test".upcase.reverse.next


# Ch. 3
# Variables

x = 10
puts x

x = 100
y = 10
puts x - y

x = 50
y = x * 100
x += y
puts x


# Comparison Operators and Expressions

age = 10
puts "You're too young to use this system" if age < 18

age = 24
puts "You're a teenager" if age > 12 && age < 20

age = 24
puts "You're NOT a teenager" unless age > 12 && age < 20

age = 24
puts "You're 24!" if age == 24

puts "You're either very young or very old" if age > 80 || age < 10

puts "A very young or old man" if gender == "male" && (age < 18 || age > 85)


# Looping Through Numbers with Blocks and Iterators

5.times do puts "Test" end

5.times { puts "Test" }

1.upto(5) { |number| puts number }

1.upto(5) do |number|
  puts number
end


# Floating Point Numbers

x = 10
y = 3
puts x.to_f / y.to_f

puts 5.7.to_i


# String Literals

puts "Hello, world!"

puts "Hello, world!".class

x = "Test"
y = "String"
puts "Success!" if x + y == "TestString"


x = %q{This is a test
of the multi
line capabilities}

x = %q!This is a test
of the multi
line capabilities!

x = <<END_MY_STRING_PLEASE
This is the string
And a second line
END_MY_STRING_PLEASE


# String Expressions

puts "abc" * 5

puts "x" > "y"

puts "y" > "x"

puts ?x
puts ?A
puts 120.chr


# Interpolation

x = 10
y = 20
puts "#{x} + #[y} = #{x + y}"

puts "100 * 5 = #{100 * 5}"

x = "cat"
puts "The #{x} in the hat"

puts "It's a #{"bad " * 5}world"

x = 10
y = 20
puts x.to_s + " + " + y.to_s + " = " + (x + y).to_s
puts "#{x} + #{y} = #{x + y}"


# Regular Expressions And String Manipulation

puts "foobar".sub('bar', 'foo')

puts "this is a test".gsub('i', '')

x = "This is a test"
puts x.sub(/^../, 'Hello')

x = "This is a test"
puts x.sub(/..$/, 'Hello')


# Iteration with a Regular Expression

"xyz".scan(/./) { |letter| puts letter }

"This is a test".scan(/../) { |x| puts x }

"This is a test".scan(/\w\w/) { |x| puts x }

"The car costs $1000 and the cat costs $10".scan(/\d+/) do |x|
  puts x
end

"The car costs $1000 and the cat costs $10".scan(/\d/) do |x|
  puts x
end

"This is a test".scan(/[aeiou]/) { |x| puts x }

"This is a test".scan(/[a-m]/) { |x| puts x }


# Matching

puts "String has vowels" if "This is a test" =~ /[aeiou]/

puts "String contains no digits" unless "This is a test" =~ /[0-9]/

puts "String has vowels" if "This is a test".match(/[aeiou]/)

x = "This is a test".match(/(\w+) (\w+)/)
puts x[0]
puts x[1]
puts x[2]


# Basic Arrays

x = [1,2,3,4]
puts x[2]

x[2] += 1
puts x[2]

x[2] = "Fish" * 3
puts x[2]

x = []
x << "Word"
x.push("Word")

x = []
x << "Word"
x << "Play"
x << "Fun"
puts x.pop
puts x.pop
puts x.length

x = ["Word", "Play", "Fun"]
puts x.join
puts x.join(', ')


# Splitting Strings into Arrays

puts "This is a test".scan(/\w/).join(',')

puts "Short sentence. Another. No more.".split(/\./).inspect

puts "Words with lots of spaces".split(/\s+/).inspect

p "Words with lots of spaces".split(/\s+/)


# Array Iteration

[1, "test", 2, 3, 4].each { |element| puts element.to_s + "X" }

[1, 2, 3, 4].collect { |element| element * 2 }

a = [1, "test", 2, 3, 4]
i = 0
while (i < a.length)
  puts a[i].to_s + "X"
  i += 1
end


# Array Addition and Concatenation

x = [1, 2, 3]
y = ["a", "b", "c" ]
z = x + y
p z

# Array Subtraction and Difference

x = [1, 2, 3, 4, 5]
y = [1, 2, 3]
z = x - y
p z

# Checking for an Empty Array

x = []
puts "x is empty" if x.empty?


# Checking an Array for a Certain Item

x = [1, 2, 3]
p x.include?("x")
p x.include?(3)


# Accessing the First and Last Elements of the Array

x = [1, 2, 3]
puts x.first
puts x.last

x = [1, 2, 3]
puts x.first(2).join("-")


# Reversing the Order of the Array's Elements

x = [1, 2, 3]
p x.reverse


# Hashes

dictionary = { 'cat' => 'feline animal', 'dog' => 'canine animal' }
puts dictionary.size
puts dictionary['cat']

dictionary['cat'] = "fluffy animal"
puts dictionary['cat']


# Iterating Through Hash Elements

x = { "a" => 1, "b" => 2 }
x.each { |key, value| puts "#{key} equals #{value}" }


# Retrieving Keys

x = { "a" => 1, "b" => 2, "c" => 3 }
p x.keys


# Deleting Hash Elements

x = { "a" => 1, "b" => 2 }
x.delete("a")
p x


# Deleting Hash Elements

x = { "a" => 100, "b" => 20 }
x.delete_if { |key, value| value < 25 }
p x


# Hashes within hashes

people = {
  'fred' => {
  'name' => 'Fred Elliott',
  'age' => 63,
  'gender' => 'male',
  'favorite painters' => ['Monet', 'Constable', 'Da Vinci']
  },
  'janet' => {
  'name' => 'Janet S Porter',
  'age' => 55,
  'gender' => 'female'
  }
}

puts people['fred']['age']
puts people['janet']['gender']
p people['janet']
puts people['fred']['favorite painters'].length
puts people['fred']['favorite painters'].join(", ")


# if and unless

age = 10
puts "You're too young to use this system" if age < 18

age = 10
if age < 18
  puts "You're too young to use this system"
end

age = 10
if age < 18
  puts "You're too young to use this system"
  puts "So we're going to exit your program now"
  exit
end

age = 10
unless age >= 18
  puts "You're too young to use this system"
  puts "So we're going to exit your program now"
  exit
end

age = 19
if age < 21
  puts "You can't drink in most of the United States"
  if age >= 18
    puts "But you can in the United Kingdom!"
  end
end

age = 10
if age < 18
  puts "You're too young to use this system"
else
  puts "You can use this system"
end


# the Ternary Operator

age = 10
type = age < 18 ? "child" : "adult"
puts "You are a " + type

age = 10
type = 'child' if age < 18
type = 'adult' unless age < 18
puts "You are a " + type

age = 10
if age < 18
  type = 'child'
else
  type = 'adult'
end
puts "You are a " + type

age = 10
puts "You are a " + (age < 18 ? "child" : "adult")


# elsif and case

fruit = "orange"
color = "orange" if fruit == "orange"
color = "green" if fruit == "apple"
color = "yellow" if fruit == "banana"


fruit = "orange"
if fruit == "orange"
  color = "orange"
elsif fruit == "apple"
  color = "green"
elsif fruit == "banana"
  color = "yellow"
else
  color = "unknown"
end

fruit = "orange"
case fruit
  when "orange"
  color = "orange"
  when "apple"
  color = "green"
  when "banana"
  color = "yellow"
  else
  color = "unknown"
end


fruit = "orange"
color = case fruit
  when "orange"
  "orange"
  when "apple"
  "green"
  when "banana"
  "yellow"
  else
  "unknown"
end


# while and until

x = 1
while x < 100
  puts x
  x = x * 2
end

x = 1
until x > 99
  puts x
  x = x * 2
end

i = 1
i = i * 2 until i > 100
puts i


# Code Blocks (REVIEW)

x = [1, 2, 3]
x.each {|y| puts y }

x = [1, 2, 3]
x.each do |y|
  puts y
end

def each_vowel(&code_block)
  %w{a e i o u}.each {|vowel| code_block.call(vowel) }
end

each_vowel {|vowel| puts vowel }


def each_vowel
  %w{a e i o u}.each {|vowel| yield vowel }
end

each_vowel {|vowel| puts vowel }

print_parameter_to_screen = lambda {|x| puts x }
print_parameter_to_screen.call(100)


# Dates and Times

puts Time.now
puts Time.now - 10
puts Time.now + 86400


class Fixnum
  def seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 * 60 * 24
  end
end

puts Time.now
puts Time.now + 10.minutes
puts Time.now + 16.hours
puts Time.now - 7.days


Time.gm(2007, 05).to_i

epoch_time = Time.gm(2007, 5).to_i
t = Time.at(epoch_time)
puts t.year, t.month, t.day


# Large Numbers

rice_on_square = 1
64.times do |square|
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
  rice_on_square *= 2
end

puts 1073741823.class

puts 1073741824.class


# Ranges

('A'..'Z').to_a.each {|letter| print letter }

('A'..'Z').each {|letter| print letter }

('A'..'Z').include?('R')

('A'..'Z').include?('r')

a = [2, 4, 6, 8, 10, 12]
p a[1..3]


# Symbols

current_situation = :good
puts "Everything is fine" if current_situation == :good
puts "PANIC!" if current_situation == :bad


person1 = { :name => "Fred", :age => 20, :gender => :male }
person2 = { :name => "Laura", :age => 23, :gender => :female }


# Converting Objects to Other Classes

puts "12" + "10"
puts 12 + 10

puts "12".to_i + "10".to_i
puts 12.to_s + 10.to_s



# Ch. 4


x = 2
print "This application is running okay if 2 + 2 = #{x + x}"


# Text Analyzer

text = ''
line_count = 0
File.open("text.txt").each do |line|
  line_count += 1
  text << line
end

puts "#{line_count} lines"

#---------------------------

lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join
total_characters = text.length
total_characters_nospaces = text.gsub(/\s+/, '').length
word_count = text.split.length
paragraph_count = text.split(/\n\n/).length
sentence_count = text.split(/\.|\?|!/).length

puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{word_count} words"
puts "#{total_characters_nospaces} characters excluding spaces"
puts "#{total_characters} characters"
puts "#{line_count} lines"



# Adding extra features

stopwords = %w{the a by on for of are with just but and to the my I has some in}

text = %q{Los Angeles has some of the nicest weather in the country.}
words = text.scan(/\w+/)
keywords = words.select {|word| !stopwords.include?(word) }

puts keywords.join(' ')
puts "#{keywords.length.to_f / words.length.to_f) * 100).to_i} percent of the words are keywords."


# Summarizing by Finding "Interesting" Sentences

text = %q{
Ruby is a great programming language. It is object oriented
and has many groovy features. Some people don't like it, but that's
not our problem! It's easy to learn. It's great. To learn more about Ruby,
visit the official Ruby Web site today.
}

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentence_sorted = sentences.sort_by {|sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/ }
puts ideal_sentences.join(". ")


# Completed Program

stopwords = %w{the a by on for of are with just but and to the my I has some in}
lines = File.readlines(ARGV[0])
line_count = lines.size
text = lines.join

character_count = text.length
character_count_nospaces = text.gsub(/\s+/, '').length

word_count = text.split.length
sentence_count = text.split(/\.|\?|!/).length
paragraph_count = text.split(/\n\n/).length

all_words = text.scan(/\w+/)
good_words = all_words.select {|word| !stopwords.include?(word) }
good_percentage = ((good_words.length.to_f / all_words.length.to_f) * 100).to_i

sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by {|sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select {|sentence| sentence =~ /is|are/ }

puts "#{line_count} lines"
puts "#{character_count} characters"
puts "#{character_count_nospaces} characters (excluding spaces)"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{good_percentage}% of words are non-fluff words"
puts "Summary:\n\n" + ideal_sentences.join(". ")
puts "-- End of analysis"



# Ch. 6

# procedural

def perimeter_of_square(side_length)
  side_length * 4
end

def area_of_square(side_length)
  side_length * side_length
end

def perimeter_of_triangle(side1, side2, side3)
  side1 + side2 + side3
end

def area_of_triangle(base_width, height)
  base_width * height / 2
end

# object-oriented

class Shape
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end
  
  def area
    @side_length * @side_length
  end
  
  def perimeter
    @side_length * 4
  end
end

class Triangle < Shape
  def initialize(base_width, height, side1, side2, side3)
    @base_width = base_width
    @height = height
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def area
    @base_width * @height / 2
  end
  
  def perimeter
    @side1 + @side2 + @side3
  end
end


puts area_of_triangle(6,6)
puts perimeter_of_square(5)

my_square = Square.new(5)
my_triangle = Triangle.new(6, 6, 7.81, 7.81, 7.81)
puts my_square.area
puts my_square.perimeter
puts my_triangle.area
puts my_triangle.perimeter



# Local, Global, Object and Class Variables

class Square
  def initialize(side_length)
    @side_length = side_length
  end
  
  def area
    @side_length * @side_length
  end
end

a = Square.new(10)
b = Square.new(5)
puts a.area
puts b.area


# Local Variables

def basic_method
  x = 50
  puts x
end

x = 10
basic_method
puts x


# Global Variables

def basic_method
  puts $x
end

$x = 10
basic_method


# Class Variables

class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end
  
  def self.count
    @@number_of_squares
  end
end


a = Square.new
b = Square.new
puts Square.count



# Class Methods vs Object Methods


class Square
  def initialize(side_length)
    @side_length = side_length
  end
  
  def area
    @side_length * @side_length
  end
end


class Square
  def self.test_method #or Square.test_method
    puts "Hello from the Square class!"
  end
  
  def test_method
    puts "Hello from an instance of class Square!"
  end
end

Square.test_method
Square.new.test_method



class Square
  def initialize
    if defined?(@@number_of_squares)
      @@number_of_squares += 1
    else
      @@number_of_squares = 1
    end
  end
  
  def Square.count
    @@number_of_squares
  end
end

a = Square.new
puts Square.count
b = Square.new
puts Square.count
c = Square.new
puts Square.count


# Inheritance

class ParentClass
  def method1
    puts "Hello from method1 in the parent class"
  end
  
  def method2
    puts "Hello from method2 in the parent class"
  end
end

class ChildClass < ParentClass
  def method2
    puts "Hello from method2 in the child class"
  end
end

my_object = ChildClass.new
my_object.method1
my_object.method2


class Person
  def initialize(name)
    @name = name
  end
  
  def name
    return @name
  end
end

class Doctor < Person
  def name
    "Dr. " + super
  end
end


# Overriding Existing Methods

x = "This is a test"
puts x.class
puts x.length
puts x.upcase


class String
  def length
    20
  end
end

puts "This is a test".length
puts "a".length
puts "A really long line of text".length


class Dog
  def talk
    puts "Woof!"
  end
end

my_dog = Dog.new
my_dog.talk

class Dog
  def talk
    puts "Howl!"
  end
end

my_dog.talk


a = "This is a test"
puts a.methods.join(' ')


class Person
  attr_accessor :name, :age
end

p = Person.new
p.name = "Fred"
p.age = 20
puts p.instance_variables



# Encapsulation

class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @first_name + ' ' + @last_name
  end
  
  private 
  
  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end
  
  def set_first_name(name)
    @first_name = name
  end
  
  def set_last_name(name)
    @last_name = name
  end
end


p = Person.new("Fred Bloggs")
p.set_last_name("Smith")



class Person
  def initialize(age)
    @age = age
  end
  
  def age
    @age
  end
  
  def age_difference_with(other_person)
    (self.age - other_person.age).abs
  end
  
  protected :age
end

fred = Person.new(34)
chris = Person.new(25)
puts chris.age_difference_with(fred)
puts chris.age


# Polymorphism

class Animal
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
end

class Cat < Animal
  def talk
    "Meaow!"
  end
end

class Dog < Animal
  def talk
    "Woof!"
  end
end

animals = [Cat.new("Flossie"), Dog.new("Clive"), Cat.new("Max")]
animals.each do |animal|
  puts animal.talk
end


puts 1000.to_s
puts [1, 2, 3].to_s
puts ({ :name => 'Fred', :age => 10 }).to_s


# Nested Classes


class Drawing
  class Line
  end
  
  class Circle
  end
end


class Drawing
  def Drawing.give_me_a_circle
    Circle.new
  end
  
  class Line
  end
  
  class Circle
    def what_am_i
      "This is a circle"
    end
  end
end


a = Drawing.give_me_a_circle
puts a.what_am_i
a = Drawing::Circle.new
puts a.what_am_i
a = Circle.new
puts a.what_am_i


# The Scope of Constants

def circumference_of_circle(radius)
  2 * Pi * radius
end

Pi 3.141592
puts circumference_of_circle(10)


class OtherPlanet
  Pi = 4.5
  
  def OtherPlanet.circumference_of_circle(radius)
    radius * 2 * Pi
  end
end

puts OtherPlanet.circumference_of_circle(10)
puts OtherPlanet::Pi
puts Pi



# Namespaces

module NumberStuff
  def NumberStuff.random
    rand(1000000)
  end
end

module LetterStuff
  def LetterStuff.random
    (rand(26) + 65).chr
  end
end

puts NumberStuff.random
puts LetterStuff.random



module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan from Moskau"


# Mix-ins

module UsefulFeatures
  def class_name
    self.class.to_s
  end
end

class Person
  include UsefulFeatures
end

x = Person.new
puts x.class_name


module AnotherModule
  def do_stuff
    puts "This is a test"
  end
end

include AnotherModule
do_stuff


# Enumerable

[1, 2, 3, 4, 5].each {|number| puts number }


my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
  longest_word = word if longest_word.length < word.length
end
puts longest_word


my_array = %w{10 56 92 3 49 588 18}
highest_number = 0
my_array.each do |number|
  number = number.to_i
  highest_number = number if number > highest_number
end
puts highest_number


[1,2,3,4].collect {|i| i.to_s + "x" }
[1,2,3,4].detect {|i| i.between?(2,3) }
[1,2,3,4].select {|i| i.between?(2,3) }
[4,1,3,2].sort
[1,2,3,4].max
[1,2,3,4].min


class AllVowels
  @@vowels = %w{a e i o u}
  def each
    @@vowels.each {|v| yield v }
  end
end

x = AllVowels.new
x.each {|v| puts v }


class AllVowels
  include Enumerable
  
  @@vowels = %w{a e i o u}
  def each
    @@vowels.each {|v| yield v }
  end
end

x = AllVowels.new
x.collect {|i| i + "x" }
x.detect {|i| i > "j" }
x.select {|i| i > "j" }
x.sort
x.max
x.min


# Comparable

class Song
  include Comparable
  
  attr_accessor :length
  def <=>(other)
    @length <=> other.length
  end
  
  def initialize(song_name, length)
    @song_name = song_name
    @length = length
  end
  
end

a = Song.new('Rock around the clock', 143)
b = Song.new('Bohemian Rhapsody', 544)
c = Song.new('Minute Waltz', 60)

a < b
b >= c
c > a
a.between?(c,b)


# Using Mix-ins with Namespaces and Classes

module ToolBox
  class Ruler
    attr_accessor :length
  end
end

module Country
  class Ruler
    attr_accessor :name
  end
end

a = ToolBox::Ruler.new
a.length = 50
b = Country::Ruler.new
b.name = "Ghengis Khan of Moskau"

include Country
c = Ruler.new
c.name = "King Henry VIII"


# Building a Dungeon Text Adventure with Objects


class Dungeon
  attr_accessor :player
  
  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end
  
  class Player
    attr_accessor :name, :location
    
    def initialize(player_name)
      @name = player_name
    end
  end
  
  class Room
    attr_accessor :reference, :name, :description, :connections
    
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
  end
end

my_dungeon = Dungeon.new("Fred Bloggs")
puts my_dungeon.player.name


# Structs

Person = Struct.new(:name, :gender, :age)
fred = Person.new("Fred", "male", 50)
chris = Person.new("Chris", "male", 25)
puts fred.age + chris.age



class Dungeon
  attr_accessor :player
  
  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end
  
  Player = Struct.new(:name, :location)
  Room = Struct.new(:reference, :name, :description, :connections)
end


# Creating Rooms

class Dungeon
  def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
  end
end

my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", { :west => :smallcave })

my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", :east => :largecave })


# Making the Dungeon Work

class Dungeon
  def start(location)
    @player.location = location
    show_current_description
  end
  
  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end
  
  def find_room_in_dungeon(reference)
    @rooms.detect {|room| room.reference == reference }
  end
  
  class Room
    def full_description
      @name + "\n\nYou are in " + @description
    end
  end
end


# Code so far

class Dungeon
  attr_accessor :player
  
  def initialize(player_name)
    @player = Player.new(player_name)
    @rooms = []
  end
  
  def add_room(reference, name, description, connections)
    @rooms << Room.new(reference, name, description, connections)
  end
  
  def start(location)
    @player.location = location
    show_current_description
  end
  
  def show_current_description
    puts find_room_in_dungeon(@player.location).full_description
  end
  
  def find_room_in_dungeon(reference)
    @rooms.detect {|room| room.reference == reference }
  end
  
  def find_room_in_direction(direction)
    find_room_in_dungeon(@player.location).connections[direction]
  end
  
  def go(direction)
    puts "You go " + direction.to_s
    @player.location = find_room_in_direction(direction)
    show_current_description
  end
  
  class Player
    attr_accessor :name, :location
    
    def initialize(name)
      @name = name
    end
  end
  
  class Room
    attr_accessor :reference, :name, :description, :connections
    
    def initialize(reference, name, description, connections)
      @reference = reference
      @name = name
      @description = description
      @connections = connections
    end
    
    def full_description
      @name + "\n\nYou are in " + @description
    end
  end

end


my_dungeon = Dungeon.new("Fred Bloggs")

my_dungeon.add_room(:largecave, "Large Cave", "a large cavernous cave", {:west => :smallcave})
my_dungeon.add_room(:smallcave, "Small Cave", "a small, claustrophobic cave", {:east => :largecave })

my_dungeon.start(:largecave)


# The Philosophy of Test-Driven Development

class String
  def titleize
    self.capitalize
  end
end

puts "this is a test".titleize

raise "Fail 1" unless "this is a test".titleize == "This Is A Test"
raise "Fail 2" unless "another test 1234".titleize == "Another Test 1234"
raise "Fail 3" unless "We're testing titleize".titleize == "We're Testing Titleize"


class String
  def titleize
    self.gsub(/\b\w/) {|letter| letter.upcase }
  end
end

class String
  def titleize
    self.gsub(/\s\w/) {|letter| letter.upcase }
  end
end

#correct version
class String
  def titleize
    self.gsub(/(\A|\s)\w/) {|letter| letter.upcase }
  end
end


# Unit Testing

class String
  def titleize
    self.gsub(/(\A|\s)\w/){|letter| letter.upcase }
  end
end

require 'test/unit'

class TestTitleize < Test::Unit::TestCase
  def test_basic
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_equal("Another Test 1234", "another test 1234".titleize)
    assert_equal("We're Testing", "We're testing".titleize)
    assert_equal("Let's make a test fail!", "foo".titleize)
  end
end







