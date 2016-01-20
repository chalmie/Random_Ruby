#You are given some code in the form of lambdas. 

#Measure and return the time taken to execute that code. 

def exec_time(proc)
  begin_time = Time.now
  proc.call
  Time.now - begin_time
end