class Student
    attr_reader :name,
         :has_laptop,
         :has_cookies
         
    attr_writer :has_laptop,
                :has_cookies
                
    
    def initialize(name)
        @name = name
    end
end