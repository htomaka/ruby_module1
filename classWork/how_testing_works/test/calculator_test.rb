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

    def test_add
        @calc.add(3)
        @calc.add(2)
        actual = @calc.total
        expected = 5
        assert_equal(actual, expected)
    end


    def test_add_invalid
        @calc.add(3)
        @calc.add('abc')
        actual = @calc.total
        expected = 3
        assert_equal(actual, expected)
    end

    def test_initial_total
      assert_equal(@calc.total, 0)
    end

    def test_clear
      @calc.add(3)
      @calc.clear
      actual = @calc.total
      expected = 0
      assert_equal(actual, expected)
    end

    def test_subtract
        @calc.subtract(3)
        @calc.subtract(2)
        actual = @calc.total
        expected = -5
        assert_equal(actual, expected)
    end


    def test_subtract_invalid
        @calc.subtract(3)
        @calc.subtract('abc')
        actual = @calc.total
        expected = -3
        assert_equal(actual, expected)
    end
end
