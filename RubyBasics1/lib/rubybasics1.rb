# Lab 1
# Part I
def sum arr
  sum = 0
  arr.each do |item|
    sum = sum + item
  end
  return sum
end

# Part II
def max_2_sum arr
  max_2_sum = 0
  if arr.length == 0
    max_2_sum = 0
  elsif arr.length == 1
    max_2_sum = arr[0]
  elsif arr.length >= 2
    numone =-200
    numtwo = -200
    arr.each do |item|
      if item > numone
        numone = item
      elsif item > numtwo
        numtwo = item
      end
    end 
    max_2_sum = numone + numtwo
  end
  return max_2_sum
end

# Part III
def sum_to_n? arr, n
  booltrack = false
  if arr.length() >= 2
    arr.each do |item|
      arr.each do |item2|
        if item != item2
          if (item + item2) == n
            booltrack = true
          end
        end
      end
    end 
  end
  return booltrack
    
end