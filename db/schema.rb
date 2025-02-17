# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_26_164646) do
  create_table "salary_deductions", force: :cascade do |t|
    t.integer "staff_id"
    t.string "name"
    t.string "lastname"
    t.integer "total_days_worked"
    t.integer "hours_worked"
    t.decimal "tax_fee"
    t.decimal "pension_fee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "total_pay"
    t.decimal "hourly_rate"
    t.decimal "net_pay"
  end

  create_table "staffs", force: :cascade do |t|
    t.integer "staff_id"
    t.string "name"
    t.string "lastname"
    t.string "job_title"
    t.integer "total_hours"
    t.integer "total_days_worked"
    t.decimal "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "amount"
    t.decimal "hourly_rate"
    t.string "position"
  end

end
