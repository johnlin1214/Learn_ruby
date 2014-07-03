def translate(str)
  output = []

  words = str.split(" ")
 
  words.each do |word|
    letter = word.split('')
      unless letter[0].match(/[aeiou]/)
        translate = letter
      until letter[0].match(/[aeio]/)
        translate << translate.shift
      end
        output << translate.join + "ay"
      else
        output << word + "ay"
    end
  end
  output.join(" ")
end