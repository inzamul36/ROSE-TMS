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

ActiveRecord::Schema.define(version: 20170422090424) do

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_phone"
    t.string   "customer_email"
    t.string   "customer_sex"
    t.text     "customer_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.integer  "order_id"
    t.string   "neck",               default: "0"
    t.string   "chest",              default: "0"
    t.string   "shoulder",           default: "0"
    t.string   "waist",              default: "0"
    t.string   "hips",               default: "0"
    t.string   "sleeve",             default: "0"
    t.string   "bicep",              default: "0"
    t.string   "wrist",              default: "0"
    t.string   "length",             default: "0"
    t.string   "thigh",              default: "0"
    t.string   "crotch",             default: "0"
    t.string   "ankles",             default: "0"
    t.string   "inseam",             default: "0"
    t.string   "outseam",            default: "0"
    t.text     "other_measurements", default: "0"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["order_id"], name: "index_measurements_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "customer_id"
    t.integer  "staff_id"
    t.date     "delivery_date"
    t.integer  "order_amount"
    t.integer  "order_paid"
    t.string   "order_status"
    t.text     "order_details"
    t.integer  "order_delete",  default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["staff_id"], name: "index_orders_on_staff_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.integer  "staff_id"
    t.date     "salary_date"
    t.string   "salary_month"
    t.integer  "salary_paid"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["staff_id"], name: "index_salaries_on_staff_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staff_name"
    t.string   "staff_phone"
    t.string   "staff_email"
    t.string   "staff_sex"
    t.text     "staff_address"
    t.integer  "staff_salary"
    t.integer  "staff_delete",  default: 0
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
