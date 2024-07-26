class Staff < ApplicationRecord
    has_many :salary_deductions
  
    validates :name, presence: true
    validates :lastname, presence: true
    validates :job_title, presence: true
    validates :total_hours, presence: true, numericality: { only_integer: true }
    validates :total_days_worked, presence: true, numericality: { only_integer: true }
end
