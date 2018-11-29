class Person
    attr_reader :name,
                :height,
                :weight,
                :age
                
    def initialize(name, height, weight)
        @name = name
        @height = height
        @weight = weight
        @age = 32
    end
    
    def have_birthday
        @age += 1
    end
end