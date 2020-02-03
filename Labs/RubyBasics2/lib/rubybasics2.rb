# Strings and Regular Expressions

# Part I
def hello(name)
  return "Hello, " + name
end

# Part II
def starts_with_consonant? s
  return s.start_with?(/(?i)([b-z&&[^eiou]])/)
end

# Part III
def binary_multiple_of_4? s
  boolT = false
  if(s.match?(/(?i)([a-z])/))
    return false
  end 
  if(s.length() == 1)
    if(s[0] == '0')
      boolT = true
    end
  else
    boolT = s.match?(/00$/)
  end
  return boolT
end
