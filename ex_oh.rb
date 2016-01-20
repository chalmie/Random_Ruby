#if number of x's == number of o's, return true

def ExOh(str)
  return true if str.scan(/x/).size == str.scan(/o/).size
  return false
end


p ExOh("oooxx")
p ExOh("ox")