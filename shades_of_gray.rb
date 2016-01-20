#Method that takes n as a parameter and returns an array
#containing n shades of gray in hexadecimal code (#aaaaaa)
#(if n > 254, n = 254)

def shades_of_gray(n)
  1.upto([254,n].min).map {|i| format '#%02x%02x%02x',i,i,i}
end


p shades_of_gray(20)