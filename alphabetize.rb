def alphabetize(arr,rev=false)
  if rev
    arr.sort {|item1,item2| item2 <=> item1 }
  else
    arr.sort {|item1,item2| item1 <=> item2 }
  end
end


p alphabetize(["heart","code","family"])