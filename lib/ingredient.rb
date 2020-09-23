class Ingredient
  attr_reader :name, :unit, :calories
  def initialize(data)
    @name = data[:name]
    @unit = data[:unit]
    @calories = data[:calories]
  end
end
