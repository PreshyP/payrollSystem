# lib/salary_deduction_calculator.rb
module SalaryDeductionCalculator
  def self.calculate_net_pay(total_days_worked, hours_worked, tax_fee, pension_fee)
    total_pay = total_days_worked * hours_worked
    net_pay = total_pay - tax_fee - pension_fee
    net_pay  
  end
end






  
  