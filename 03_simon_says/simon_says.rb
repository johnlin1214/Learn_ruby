
def echo(str)
  str
end 

def shout(str)
  str.upcase 
end 

def repeat(str, repeat = 2)
  output = [] 
    repeat.times do output << str 
    end 
  output.join(" ")
end 

def start_of_word(str, num)
  str[0...num]
end 

def first_word(str)
  str.split(' ')[0]
end 

def titleize(str)
  output = [] 
  lower = %w(and over the but at in if or) 
  str.split(' ').each do |word|
    if lower.include? word
      output << word
    else
      output << word.capitalize
    end
  end
  output[0].capitalize!
  output.join(' ')
end

