class Fridge
    attr_reader :brand,
                :color,
                :temperature,
                :contents
    def initialize(brand, color, temperature, plugged_in, contents)
        @brand = brand
        @color = color
        @temperature = temperature
        @plugged_in = plugged_in
        @contents = contents
    end
    
    def add_food(food)
        @contents << food
    end
end