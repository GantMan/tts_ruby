def get_name
  puts "Hey what's your name, and I'll guess your weight?"
  gets.chomp
end

def get_inches welcome_name
  puts "Welcome #{welcome_name}!!! How many feet tall are you?"
  height_feet = gets.chomp.to_i
  puts "How many inches?"
  height_inches = gets.chomp.to_i
  (12 * height_feet) + height_inches
end
# Create a conditional inside get_inches to restrict answers to 12 or less.
# Bonus: ask the user again using DRY principle.

my_name = get_name
total_height_inches = get_inches(my_name)

if total_height_inches.zero?
  puts "Man you're short!  Do you mind trying that again?"
  total_height_inches = get_inches(my_name)
  puts "Ok man, I believe you this time..."
elsif total_height_inches > 1000
  puts "WOW!  How's the weather up there?  Let's ask again!"
  total_height_inches = get_inches("Skyscraper!")
else
  puts "thanks! #{my_name}"
end

# Homework: relay above logic to weight_pounds. Make it dynamic and responsive to various user inputs.
weight_pounds = 115

height_centimeters = total_height_inches * 2.54
weight_kilograms = weight_pounds * 0.453592

puts "\n#{my_name} is #{height_centimeters}cm and #{weight_kilograms}kg"