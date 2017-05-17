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

# ask for first number
# ask for operator
# ask for second number
# calculate result
# return result

def start_calculator
  puts "Welcome to the calculator"
  puts "Enter the first number"
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
  first_number = gets.strip.to_f
  calculate
end

def calculate
  puts "Enter operator: + - * / = QUIT"
  puts "> "
  operator = gets.strip
  second_number
end

def result
  case result
  when "+"
    puts result = first_number + second_number
  when "-"
    puts first_number - second_number
  when "*"
    puts first_number * second_number
  when "/"
    puts first_number / second_number
  when "QUIT"
    exit
  else
    error
  end
end

def second_number
  puts "Enter the second_number:"
  print ">"
  second_number = gets.strip.to_f
  result
end

def result
  exit
end

def error
  puts "Error"
  calculate
end

start_calculator
