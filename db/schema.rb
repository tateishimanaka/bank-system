# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_01_135808) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "collaterals", force: :cascade do |t|
    t.string "collateral"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corporation_customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
    t.string "name"
    t.string "name_kana"
    t.string "president"
    t.string "president_kana"
    t.string "postal_code"
    t.string "address"
    t.string "telephone_number"
    t.string "president_telephone_number"
    t.string "president_postal_code"
    t.string "president_address"
    t.string "category"
    t.string "capital"
    t.boolean "is_active", default: true
  end

  create_table "corporation_projects", force: :cascade do |t|
    t.integer "corporation_customer_id"
    t.integer "user_id"
    t.integer "collateral_id"
    t.integer "use_of_fund_id"
    t.integer "fund_type_id"
    t.integer "loan"
    t.integer "span"
    t.integer "month_payment"
    t.integer "last_mont_payment"
    t.string "interest_rate"
    t.string "joint_guarantor"
    t.integer "own_resource"
    t.string "end_day"
    t.string "date"
    t.string "appoint_date"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fund_types", force: :cascade do |t|
    t.string "fund_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "individual_customers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "store_id"
    t.string "last_name"
    t.string "first_name"
    t.string "last_name_kana"
    t.string "first_name_kana"
    t.string "postal_code"
    t.string "address"
    t.string "telephone_number"
    t.string "business"
    t.string "yearly_income"
    t.string "birthday"
    t.boolean "is_active", default: true
  end

  create_table "individual_projects", force: :cascade do |t|
    t.integer "individual_project_id"
    t.integer "user_id"
    t.integer "collateral_id"
    t.integer "use_of_fund_id"
    t.integer "fund_type_id"
    t.integer "loan"
    t.integer "span"
    t.integer "month_payment"
    t.integer "last_mont_payment"
    t.string "interest_rate"
    t.string "joint_guarantor"
    t.integer "own_resource"
    t.string "end_day"
    t.string "date"
    t.string "appoint_date"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.boolean "is_active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_stores_on_email", unique: true
    t.index ["reset_password_token"], name: "index_stores_on_reset_password_token", unique: true
  end

  create_table "use_of_funds", force: :cascade do |t|
    t.string "use_of_fund"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
