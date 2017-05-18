# Calculator Basic Objectives
#
# take first number
# take modifier
# take last number
# puts result
# error checking
# user input and modifiers should be checked for proper input type
# result should set first_number and allow for another modifier and last number so result continues to build until the user decides to clear the calculator
# - make + - * / work
# - make clear work

# commit to github
@first_number
@second_number

def start_calculator
  puts "Welcome to the calculator"
  print "> "
  first_number
end

def first_number
  puts "Enter the first number:"
  print "> "
  #  first_number = gets.strip
  # check if number is integer,
  # if first_number == "0" #(first_number.to_i.to_s || first_number.to_i.to_f) == first_number
  #   first_number.to_f
  # elsif first_number ==
  #
  # else
  #   error
  # end
  # calculate
  @first_number = gets.strip.to_f
  calculate
end

def second_number
  puts "Enter the second number:"
  print ">"
  @second_number = gets.strip.to_f
  result
end

def calculate
  puts "Enter operator: + - * / = QUIT"
  print "> "
  @operator = gets.strip
  if
    @operator = "QUIT"
    exit
  end
  second_number
end

def result
  case @operator
  when "+"
    puts (@first_number + @second_number)
  when "-"
    puts (@first_number - @second_number)
  when "*"
    puts (@first_number * @second_number)
  when "/"
    puts (@first_number / @second_number)
  else
    error
  end
  exit
end

def error
  puts "Error"
  @first_number
end

start_calculator
