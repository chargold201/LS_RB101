def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator! Enter your name: ")

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  num1 = ''
  loop do
    prompt("Enter first number: ")
    num1 = gets.chomp
    break if valid_number?(num1)
    prompt("That doesn't look like a valid number...")
  end

  num2 = ''
  loop do
    prompt("Enter second number: ")
    num2 = gets.chomp
    break if valid_number?(num2)
    prompt("That doesn't look like a valid number...")
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp.downcase

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when "1"
             num1.to_i + num2.to_i
           when "2"
             num1.to_i - num2.to_i
           when "3"
             num1.to_i * num2.to_i
           when "4"
             num1.to_f / num2.to_f
           end

  prompt("The result is #{result}")
  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator. Goodbye!")
