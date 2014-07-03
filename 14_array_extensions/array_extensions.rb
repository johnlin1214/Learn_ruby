class Array 
  def sum
    self.reduce(0,:+)
  end

  def square
    return [] if self.length == 0
    self.map {|x| x*x}
  end

  def square!
    return [] if self.length == 0
    self.map! {|x| x*x}
  end
end