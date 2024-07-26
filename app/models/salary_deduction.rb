class SalaryDeduction < ApplicationRecord
    belongs_to :staff

  
    validates :staff_id, presence: true
    validates :total_days_worked, presence: true
    validates :total_days_worked, :hours_worked, :tax_fee, :pension_fee, :hourly_rate, presence: true
  end
  
  # app/models/staff.rb
  class Staff < ApplicationRecord
    belongs_to :staff
    has_many :salary_deductions
    attr_accessor :net_pay
  end