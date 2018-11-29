require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/student"

class StudentTest < Minitest::Test
    def test_it_exists
        student = Student.new("James")
        assert_instance_of(Student, student)
    end
   
    def test_student_has_a_name
        student = Student.new("Penelope")
        assert_equal("Penelope", student.name)
    end
    
    def test_student_has_laptop
        student = Student.new("Arnold")
        student.has_laptop = true
        assert(student.has_laptop)
    end
    
    def test_student_has_cookies
        student = Student.new("Jenny")
        student.has_cookies = false
        refute(student.has_cookies)
    end
end 