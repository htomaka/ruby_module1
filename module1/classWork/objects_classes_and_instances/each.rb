singers = ["justin", "selena", "demi", "carly"]

# Can you print out their names capitalized?
singers.each {|name| puts name.capitalize}
# Can you print out their names in all caps?
singers.each {|name| puts name.upcase}
# Can you print out their names but reversed?
singers.each {|name| puts name.reverse}
# Can you create a new array with only the names that are longer than four letters in length?
p singers.select {|name| name.length > 4}
# Can you create a new array with the lengths of their names?
p singers.map {|name| name.length}

array = [1,2,3,4,5]

# Can you create a new array with only the odd numbers?
array.select {|num| num.odd?}
# Can you create a new array with only the even numbers?
array.select {|num| num.even?}
# Can you print out each number doubled?
array.each {|num| puts num * 2}
# Can you print out if the number is divisible by 2 or not?
array.each do |num|
  if num.even?
    puts num
  end
end
# Can you find the the sum of the numbers?
array.inject(0) {|sum, num|  sum += num}
