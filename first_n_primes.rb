require 'prime'

def first_n_primes(n)
  
  "n must be an integer" unless n.is_a?Integer
  "n must be greater than 0" if n <= 0
  
  prime = Prime.instance
  prime.first n
end

p first_n_primes(10)