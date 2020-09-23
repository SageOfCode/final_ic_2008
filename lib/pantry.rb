class Pantry
  attr_reader :stock
  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, count)
    if @stock == nil
      @stock[ingredient] = count
    else
      @stock[ingredient] += count
    end
  end

  def enough_ingredients_for?(recipe)
    @stock.all? do |ingredient, count|
      num = recipe.ingredients_required.values.any? do |number|
        count <= number
      end
    end
  end
end
