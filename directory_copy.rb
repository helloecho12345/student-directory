#student_count = 11

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  students
end
  # return the array of students
  
# prints the title of the directory
def print_header
  puts "The students of Villain Academy"
  puts "-------------"
end

# prints the list of students
def print(students)
  students.each_with_index do |student, index|
    puts "#{index} #{student[:name]} (#student[:cohort]} cohort)"
  end
end

# prints the total number of students
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# it's important that print() doesn't add new line characters

# nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)