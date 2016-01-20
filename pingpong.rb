def ping_pong(num)
  if num <= 0
    return nil
  end
  
  while num > 0
    if (num % 3 == 0) && (num % 5 == 0)
      puts "ping pong"
    elsif num % 3 == 0
      puts "ping"
    elsif num % 5 == 0
      puts "pong"
    else
      puts num
    end
    num -= 1
  end
end


p ping_pong(15)