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
  
  def flavor=(flavor)
    @flavor = flavor
  end
  def flavor
    @flavor
  end
  
  def initialize(flavor)
    @name = "#{flavor} jelly bean"
    @calories = 5
    @flavor = flavor
  end
  
  
end
