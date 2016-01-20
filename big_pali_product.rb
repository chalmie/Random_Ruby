#A palindromic number reads the same both ways. 
#The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91 × 99.

#Find the largest palindrome made from the product
# of two 3-digit numbers.




def recursive_palindrome(num1,num2=num1)
  product = num1 * num2
  return [product,num1,num2] if product.to_s == product.to_s.reverse
  if num2 > 900
    num2 -= 1
  else
    num1 -= 1
    num2 = num1 # avoids multiplying same numbers again
  end
  recursive_palindrome(num1, num2)
end

puts recursive_palindrome(999)
  
    
    
      
    
    
        
  
  

  

    
  
  
  
  
  
  

    
    