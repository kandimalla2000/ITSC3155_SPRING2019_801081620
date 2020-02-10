module FunWithStrings
  def palindrome?
    x = 0
    word = self.downcase
    word = word.gsub(/[^a-zA-Z]/, '')
    while x < word.length/2 do
      
      if word[x] != word[word.length-x-1]
        return false
      end
      x = x + 1
    end
    
    return true
    
  end
  def count_words
    x = 0
    dictionary = {}
    word = self.downcase
    word = word.gsub(/[^a-zA-Z ]/, '')
    word = word.split()
    puts word
    while x < word.length do
      dictionary[word[x]] = dictionary[word[x]].to_i + 1
      x = x + 1
    end
    return dictionary
    
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
