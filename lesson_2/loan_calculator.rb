def calc_monthly_rate(apr)
  apr / 12.0 / 100.0
end

def calc_duration_months(years)
  years * 12.0
end

def calc_monthly_payment(total, monthly_rate, duration_months)
  total * (monthly_rate / (1 - (1 + monthly_rate)**(-duration_months)))
end

puts "Please enter the total loan amount in dollars:"
loan_amount = gets.chomp.to_f
puts "Please enter the APR in percents (ex: 5 for 5%, 10 for 10%):"
apr = gets.chomp.to_f
puts "Please enter the loan duration in years:"
duration_years = gets.chomp.to_f

monthly_rate = calc_monthly_rate(apr)
duration_months = calc_duration_months(duration_years)
monthly_payment =
  format('%.2f',
         calc_monthly_payment(loan_amount, monthly_rate, duration_months))

puts "Your total monthly payment will be $#{monthly_payment}."
