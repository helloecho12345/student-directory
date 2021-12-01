student_count = 11

students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
    ]
# prints the title of the directory
puts "The students of Villain Academy"
puts "-------------"
# prints the list of students
students.each do |student|
  puts student
end
# prints the total number of students
puts "Overall, we have #{students.count} great students"
# it's important that print() doesn't add new line characters