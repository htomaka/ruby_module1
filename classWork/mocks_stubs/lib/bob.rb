class Bob 
    attr_reader :paints
    
    def initialize
        @paints = []
    end
    
    def add_paint(paint)
        @paints << paint
    end
    
    def total_paint_amount
        @paints.reduce(0) {|total, paint| total += paint.quantity }
    end
end