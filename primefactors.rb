#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?



def num_factors(num)
  
  factors = []
  
  i = 2 
  while i < num
    if num % i == 0
      factors << i
    end
    
    i += 1
  end
  
  factors
end


def primes(num)
    arr=(0..num).to_a
    arr[0]=nil
    arr[1]=nil
    max=num
    (num/2+1).times do |n|
        if(arr[n]!=nil) then
            cnt=2*n
            while cnt <= max do
                arr[cnt]=nil
                cnt+=n
            end
        end
    end
    arr.compact!
end 

  
def factor_primes(num)
  num_factors = num_factors(num) 
  primes = primes(num)
  
  prime_factors = []
  num_factors.map {|x| prime_factors << x if primes.include? x }
  
   prime_factors
end



 def prime_factors(n)
  return [] if n == 1
  factor = (2..n).find {|x| n % x == 0}
  [factor] + prime_factors(n / factor)
end
puts prime_factors(13195) 



  
  
      