require 'minitest/autorun'
require 'minitest/pride'
require 'mocha/minitest'
require './lib/bob'

class BobTest < Minitest::Test
    def test_it_exists
        bob = Bob.new
        assert_instance_of Bob, bob
    end
   
   def test_it_starts_with_no_paints
       bob = Bob.new
       assert_equal [], bob.paints
   end
   
   def test_it_can_have_paint
      bob = Bob.new
      paint_1 = mock
      paint_1.stubs(:color).returns("Alizarin Crimson")
      paint_2 = mock
      paint_2.stubs(:color).returns("Van Dyke Brown")
    
      bob.add_paint(paint_1.color)
      bob.add_paint(paint_2.color)
    
      assert_equal [paint_1.color, paint_2.color], bob.paints
    end
    
    def test_it_can_total_paint_amount
        bob = Bob.new
        paint_1 = mock
        paint_1.stubs(:quantity).returns(42)
        paint_2 = mock
        paint_2.stubs(:quantity).returns(25)
    
        bob.add_paint(paint_1)
        bob.add_paint(paint_2)
    
        assert_equal paint_1.quantity + paint_2.quantity, bob.total_paint_amount
  end
end