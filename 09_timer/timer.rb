class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padded(num)
    num.to_s.length == 1  ? '0' + num.to_s : num.to_s
  end

  def time_string
    hours = @seconds / 3600
    minutes = (@seconds / 60) % 60
    seconds = @seconds % 60
    "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
end