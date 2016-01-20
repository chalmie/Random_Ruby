#A Pythagorean triplet is a set of three natural numbers,
#a < b < c, for which, a2 + b2 = c2.

#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.






def pythag_trip(num)
  a = 0
  while a < num
    b = a + 1
    while b < num
      c = b + 1
      while c < num
        if (a + b + c == num) && (a**2 + b**2 == c**2)
          return [a,b,c]
        end
        c += 1
      end
      b += 1
    end
    a += 1
  end
  return nil
end


puts pythag_trip(1000)