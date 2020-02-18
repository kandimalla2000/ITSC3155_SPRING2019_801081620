class Dessert
  # add code for setters and getters
  def name=(name)
    @name = name
  end
  def name
    @name
  end
  def calories=(calories)
    @calories = calories
  end
  def calories
    @calories
  end
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if(@calories < 200)
      return true
    else
      return false
    end 
  end
  def delicious?
    return true
  end
end

class JellyBean < Dessert
  # add code for setters and getters
  def initialize(flavor)
    # your code here
  end
end
