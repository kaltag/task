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

ActiveRecord::Schema.define(version: 2022_07_10_184721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "executors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "client_name"
    t.datetime "order_date"
    t.bigint "executor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["executor_id"], name: "index_orders_on_executor_id"
  end

  create_table "orders_services", id: false, force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "service_id", null: false
    t.index ["order_id", "service_id"], name: "index_orders_services_on_order_id_and_service_id"
    t.index ["service_id", "order_id"], name: "index_orders_services_on_service_id_and_order_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.bigint "category_service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_service_id"], name: "index_services_on_category_service_id"
  end

  add_foreign_key "orders", "executors"
  add_foreign_key "services", "category_services"
end
