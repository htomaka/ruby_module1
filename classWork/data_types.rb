require "pry"

# strings
teacher = "sal"
teacher.upcase # => "SAL"
"My favorite teacher is #{teacher.capitalize}" # => "My favorite teacher is Sal"
"My first initial is " + "Megan"[0] + "!" # => "My first initial is M"
"My name is #{"Brian".length} letters long" # => "My name is 5 letters long"
"My name ends in #{teacher[-1]}" # => "My name ends in l"

# numbers
numbers = [5, 4, 7, 9]
numbers[0] # => 5
numbers.push(7) # => [5, 4, 7, 9, 7]
numbers.pop # => 7
numbers.length # => 4
numbers.insert(1, 4) # => [5, 4, 4, 9]
numbers.join(", ") # => 5, 4, 4, 9

binding.pry
