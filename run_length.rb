# "wwwggopp" => "3w2g1o2p"


def run_length(str)
  answer = []
  str = str.split('')
  i = 0
  counter = 1
  while i < str.length
  
    if str[i] == str[i + 1]
      counter += 1
      i += 1
      next
    else
      answer.push(counter)
      answer.push(str[i])
      counter = 1
      i += 1
    end
  end
  
  return answer.join('')
end


p run_length("wwwggopp")