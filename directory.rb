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
def print_header
  puts "The students of Villain Academy"
  puts "-------------"
end

# prints the list of students
def print(students)
  students.each do |student|
    puts student
  end
end

# prints the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# it's important that print() doesn't add new line characters

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
