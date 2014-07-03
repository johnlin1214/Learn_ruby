class Temperature
  
  def initialize(opts)
    @fahrenheit = opts[:f] || opts[:c] * (9/5.to_f) + 32.0
    @celsius = opts[:c] || (opts[:f] - 32.0) * (5/9.to_f)
  end

  def self.from_celsius(celsius)
    Temperature.new(c: celsius)
  end

  def self.from_fahrenheit(fahrenheit)
    Temperature.new(f: fahrenheit)
  end

  def in_celsius
    @celsius
  end

  def in_fahrenheit
    @fahrenheit
  end

  def Temperature.c_to_f(celsius)
    celsius * (9/5.to_f) + 32.0
  end

  def Temperature.f_to_c(fahrenheit)
    (fahrenheit - 32.0) * (5/9.to_f)
  end
end

class Celsius < Temperature
  def initialize(celsius)
    super(c: celsius)
  end
end

class Fahrenheit < Temperature
  def initialize(fahrenheit)
    super(f: fahrenheit)
  end
end