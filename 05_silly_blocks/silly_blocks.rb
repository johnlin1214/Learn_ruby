def reverser
    yield.split(' ').map {|x| x.reverse! }.join(' ')
end 

def adder(increment = 1)
	yield + increment
end 

def repeater(repetitions = 1)
	x = 0 
	repetitions.times {yield}
	x 
end


