class Dictionary
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(entry)
    entry.is_a?(Hash) ? @entries.merge!(entry) : @entries.merge!( {entry => nil} )
  end


  def include?(entry)
    @entries.has_key?(entry)
  end

  def find(entry)
    @entries == {} ? {} : @entries.select { |key| key.match(entry) }
  end
  
  def keywords
    @entries.keys.sort
  end

  def printable
    output = []
    
    @entries.sort.select do |key, value|
      output << %Q{[#{key}] "#{value}"}
    end
    output.join("\n")
  end
end

