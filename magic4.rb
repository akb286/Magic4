# Take some random number (in text), then count number of characters in this number (for example "one" has three characters).
# Now take resulting number of characters and again count number of characters..
# repeat until number of characters is "four"
require 'numbers_in_words'

def menu
  puts 'Enter a Number: '
  choice = gets.strip.to_i
  magic(choice)
end

def magic
  word = NumbersInWords.in_words(choice)
  number = word.split(' ').length
  case number
  when 4
    puts "#{chocie} is #{number},"
    puts "and 4 is the magic number!"
  else
    puts "#{choice} is #{number},"
    magic(number)
  end
end

menu
