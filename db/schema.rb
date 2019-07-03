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

ActiveRecord::Schema.define(version: 20190703163237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "opportunities", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "organization_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_opportunities_on_organization_id"
  end

  create_table "opportunity_admins", force: :cascade do |t|
    t.bigint "opportunity_id"
    t.bigint "organization_admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["opportunity_id"], name: "index_opportunity_admins_on_opportunity_id"
    t.index ["organization_admin_id"], name: "index_opportunity_admins_on_organization_admin_id"
  end

  create_table "organization_admins", force: :cascade do |t|
    t.bigint "organization_id"
    t.bigint "admin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_id"], name: "index_organization_admins_on_admin_id"
    t.index ["organization_id"], name: "index_organization_admins_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "opportunities", "organizations"
  add_foreign_key "opportunity_admins", "opportunities"
  add_foreign_key "opportunity_admins", "organization_admins"
end
