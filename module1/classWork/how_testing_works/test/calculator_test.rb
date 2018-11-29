require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/calculator"

class CalculatorTest < Minitest::Test
    def setup 
        @calc = Calculator.new
    end
    
    def test_it_exists
        assert_instance_of(Calculator, @calc)
    end
    
    # add
    def test_add_positive
        @calc.add(3)
        @calc.add(2)
        actual = @calc.total
        expected = 5
        assert_equal(actual, expected)
    end
    
    def test_add_negative
        @calc.add(-3)
        @calc.add(10)
        actual = @calc.total
        expected = 7
        assert_equal(actual, expected)
    end
    
    def test_add_float
        @calc.add(3)
        @calc.add(1.2)
        actual = @calc.total
        expected = 4.2
        assert_equal(actual, expected)
    end
    
    def test_add_invalid
        @calc.add(3)
        @calc.add('abc')
        actual = @calc.total
        expected = 3
        assert_equal(actual, expected)
    end
    
    # total 
    
    # clear
    
    # subtract
end