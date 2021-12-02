@students = [] # an empty array accessible to all methods

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = gets.chomp
  end
  @students
end
  # return the array of students
  
def interactive_menu
  loop do
    print_menu # print the menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_students_list
  print_footer(@students)
end

def process(selection)
  case selection  
    when "1"
        # input the students
      input_students
    when "2"
        # show the students
      show_students
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  # 4. repeat from step 1
end

# prints the title of the directory
def print_header
  puts "The students of Villain Academy"
  puts "-------------"
end

# prints the list of students
def print_students_list
  @students.each_with_index do |student, index|
    puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

# prints the total number of students
def print_footer(students)
  puts "Overall, we have #{@students.count} great students"
end
# it's important that print() doesn't add new line characters
# nothing happens until we call the methods
interactive_menu