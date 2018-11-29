class Calculator
    attr_reader :total

    def initialize
        @total = 0
    end

    def add(num)
        if num.is_a? Numeric
            @total += num
        else
            0
        end
    end

    def clear
      @total = 0
    end
end
