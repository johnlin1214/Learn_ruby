class Book
  attr_accessor :title

  def initialize
    @lowercase = ["the", "a", "an", "and", "in", "of"] 
    @title = ""
  end

  def title  
    title_words = @title.split(" ")
    title_words[0].capitalize! 
    title_words.map! {|x| @lowercase.include?(x) ? x : x.capitalize}
    @title = title_words.map! {|x| x == "i" ? x.upcase : x}.join(" ")
  end 
end