class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end

  def name
    @name
  end

  def breed
    @breed
  end

  def age
    @age
  end

  def favorite_foods
    @favorite_foods
  end

  def age=(number)
    @age = number
  end

  def bark
    if @age > 3
      @bark.upcase
    else
      @bark.downcase
    end
  end

  def favorite_food?(food)
    #favorite_foods.any? { |ele| ele == food.capitalize }
    #No need to downcase both sides: input is formatted the same as .capitalize
    @favorite_foods.include?(food.capitalize)
  end
end
