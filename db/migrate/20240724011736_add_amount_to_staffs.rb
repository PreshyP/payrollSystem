class AddAmountToStaffs < ActiveRecord::Migration[7.1]
  def change
    add_column :staffs, :amount, :decimal
  end
end
