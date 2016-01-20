=begin
1 Jan 1900 was a Monday.
Thirty days has September,
April, June and November.
All the rest have thirty-one,
Saving February alone,
Which has twenty-eight, rain or shine.
And on leap years, twenty-nine.
A leap year occurs on any year evenly 
divisible by 4, but not on a century unless 
it is divisible by 400.
How many Sundays fell on the first of the 
month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?
=end



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
  
  