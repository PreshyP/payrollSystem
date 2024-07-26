class AddNetPayAndTotalPayAndHourlyRateToSalaryDeductions < ActiveRecord::Migration[7.1]
  def change
    add_column :salary_deductions, :net_pay, :decimal unless column_exists? :salary_deductions, :net_pay
    add_column :salary_deductions, :total_pay, :decimal unless column_exists? :salary_deductions, :total_pay
    add_column :salary_deductions, :hourly_rate, :decimal unless column_exists? :salary_deductions, :hourly_rate
  end
end
