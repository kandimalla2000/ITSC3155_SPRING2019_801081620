module FunWithStrings
  def palindrome?
    x = 0
    phrase = self.downcase
    phrase = phrase.gsub(/[^a-zA-Z]/, '')
    while x < phrase.length/2 do
      
      if phrase[x] !=phrase[phrase.length-x-1]
        return false
      end
      x = x + 1
    end
    
    return true
    
  end
  
  def count_words
    x = 0
    dictionary = {}
    phrase = self.downcase
    phrase = phrase.gsub(/[^a-zA-Z ]/, '')
    phrase = phrase.split()
    while x < phrase.length do
      dictionary[phrase[x]] = dictionary[phrase[x]].to_i + 1
      x = x + 1
    end
    return dictionary
    
  end
  def anagram_groups
    x = 0
    dictionary = Hash.new{|hsh,key| hsh[key] = [] }
    phrase = self.split()
    
    while x < phrase.length do 
      temp = phrase[x].downcase.chars.sort
      
      dictionary[temp].push phrase[x]
      x = x + 1
    end
    puts dictionary
    return dictionary.values
  end 
end 


# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
