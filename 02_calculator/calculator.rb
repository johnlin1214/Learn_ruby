
def add(x,y)
  x + y 
end 

def subtract(x,y)
  x - y 
end 

def sum(ary)
  ary.reduce(0,:+)
end 

def power(num,exp)
  num**exp 
end  

def multiply(*nums)
  nums.reduce(:*)
end

def factorial(num)
  num == 0 ? 1 : (1..num).reduce(:*)
end
