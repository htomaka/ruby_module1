require "./fridge"
require "./book"
require "./library"
require "pry"

fridge_1  = Fridge.new("Maytag", "white", 36, true, ["leftover pizza", "yogurt", "soylent"])
puts "Number 1: #{fridge_1}"

fridge_2   = Fridge.new("", "black", 40, true, [])
puts "Number 2: #{fridge_2}"
puts "Content: #{fridge_2.contents}"
fridge_2.add_food("eggs")
puts "New content: #{fridge_2.contents}"

person_1 = Person.new("Honoré", 189, 100)
puts "Person 1: #{person_1}"
puts "Age: #{person_1.age}"
person_1.have_birthday
puts "New age: #{person_1.age}"

book_1 = Book.new("Tintin", "Hergé")
book_2 = Book.new("Black & Mortimer", "Edgar P. Jacobs")
book_3 = Book.new("Largo Winch", "Vance")

lib_1 = Library.new("Acte Sud")
lib_1.add_book(book_1)
lib_1.add_book(book_2)
lib_1.add_book(book_3)

p lib_1.titles
p lib_1.authors

binding.pry
