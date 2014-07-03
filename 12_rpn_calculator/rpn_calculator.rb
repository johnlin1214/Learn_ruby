class RPNCalculator
  attr_accessor :stack, :value

  def initialize
    @stack = []
  end  
  
  def push(num)
    @stack << num
  end

  def plus
    if @stack.length < 2
      raise "calculator is empty"
    else
      num2 = @stack.pop
      num1 = @stack.pop
      @stack << num1 + num2
    end
  end

  def minus
    if @stack.length < 2
      raise "calculator is empty"
    else
      num2 = @stack.pop
      num1 = @stack.pop
      @stack << num1 - num2
    end
  end

  def times
    if @stack.length < 2
      raise "calculator is empty"
    else
      @stack << stack.pop.to_f * stack.pop.to_f 
    end
  end

  def divide
    if @stack.length < 2
      raise "calculator is empty"
    else
      num2 = @stack.pop.to_f
      num1 = @stack.pop.to_f
      @stack << num1 / num2
    end
  end

  def value
      @stack[-1]
  end

  def tokens(str)
  	x = str.split(" ")
    x.map! do |x|
  		if x == '*'
  			x = :* 
  		elsif x == '+' 
  			x = :+ 
  		elsif x == '-'
  			x =  :-
  		elsif x == '/'
  			x =  :/
  		else 
  			x = x.to_i 
  		end 
  	end
	  x
  end 

  def evaluate(str)
    tokens(str).each do |x|
      if x == :+
        plus
      elsif x == :-
        minus
      elsif x == :/
        divide
      elsif x == :*
        times
      else
        push(x)
      end
    end
  value
  end
end 