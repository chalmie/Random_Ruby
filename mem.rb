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



    

puts factor_primes(2968)

  
  
      