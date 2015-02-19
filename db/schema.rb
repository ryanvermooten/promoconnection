# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150218083200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: true do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "customers", force: true do |t|
    t.string   "company_name"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "contact_person"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materials", force: true do |t|
    t.string "name"
  end

  create_table "materials_suppliers", id: false, force: true do |t|
    t.integer "material_id", null: false
    t.integer "supplier_id", null: false
  end

  add_index "materials_suppliers", ["material_id", "supplier_id"], name: "index_materials_suppliers_on_material_id_and_supplier_id", using: :btree

  create_table "materials_templates", id: false, force: true do |t|
    t.integer "material_id", null: false
    t.integer "template_id", null: false
  end

  add_index "materials_templates", ["template_id", "material_id"], name: "index_materials_templates_on_template_id_and_material_id", using: :btree

  create_table "orders", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.text     "special_notes"
    t.datetime "due_at"
    t.string   "image"
  end

  create_table "orders_templates", id: false, force: true do |t|
    t.integer "order_id",    null: false
    t.integer "template_id", null: false
    t.string  "quantity"
  end

  add_index "orders_templates", ["template_id", "order_id"], name: "index_orders_templates_on_template_id_and_order_id", using: :btree

  create_table "orders_users", id: false, force: true do |t|
    t.integer "order_id", null: false
    t.integer "user_id",  null: false
  end

  add_index "orders_users", ["order_id", "user_id"], name: "index_orders_users_on_order_id_and_user_id", using: :btree
  add_index "orders_users", ["user_id", "order_id"], name: "index_orders_users_on_user_id_and_order_id", using: :btree

  create_table "quotes", force: true do |t|
    t.integer  "total_amount"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quotes", ["order_id"], name: "index_quotes_on_order_id", using: :btree

  create_table "suppliers", force: true do |t|
    t.string   "company_name"
    t.string   "email"
    t.integer  "phone_number"
    t.string   "contact_person"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "templates", force: true do |t|
    t.string "final_product"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
