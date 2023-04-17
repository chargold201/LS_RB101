puts "Welcome to the calculator!"
puts "Enter first number: "
num1 = gets.chomp
puts "Enter second number: "
num2 = gets.chomp
puts "Choose an operation. Type '+', '-', '*', or '/':"
operation = gets.chomp.downcase
result = case operation
when "+"
  num1.to_i + num2.to_i
when "-"
  num1.to_i - num2.to_i
when "*"
  num1.to_i * num2.to_i
when "/"
  num1.to_f / num2.to_f
end

puts "The result of #{num1} #{operation} #{num2} is #{result}"