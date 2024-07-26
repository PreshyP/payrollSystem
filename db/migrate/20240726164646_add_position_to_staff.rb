class AddPositionToStaff < ActiveRecord::Migration[7.1]
  def change
    add_column :staffs, :position, :string
  end
end
