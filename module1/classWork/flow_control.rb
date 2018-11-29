# Write a program that will ask the user to enter some text
# If the text has an odd number of characters, print “ODD!”
# If the text has an even number of characters, print “EVEN!”
# The program should repeat this process until the user enters “q” or “quit"
def get_input(instructions)
  print instructions
  gets.chomp
end

def quit?(cmd)
  cmd === "q" || cmd === "quit"
end


# while loop version
input = get_input("Enter some text: ")
while !quit?(input) do
  if input.length.even?
    puts "EVEN!"
  else
    puts "ODD!"
  end
  input = get_input("Enter some text: ")
end

# until version
input = get_input("Enter some text: ")
until quit?(input) do
  if input.length.even?
    puts "EVEN!"
  else
    puts "ODD!"
  end
  input = get_input("Enter some text: ")
end

# loop do version
input = get_input("Enter some text: ")
loop do
  break if quit?(input)

  if input.length.even?
    puts "EVEN!"
  else
    puts "ODD!"
  end
  input = get_input("Enter some text: ")
end
