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

ActiveRecord::Schema.define(version: 20141028234443) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "academic_degrees", force: true do |t|
    t.integer  "personnel_id"
    t.integer  "degree_type_id"
    t.string   "year_awarded"
    t.boolean  "in_progress"
    t.string   "university"
    t.string   "department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affiliations", force: true do |t|
    t.string   "institute_name"
    t.string   "website"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.integer  "parent_institutition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_details", force: true do |t|
    t.integer  "personnel_id"
    t.string   "job_title"
    t.string   "organization"
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "zipcode"
    t.string   "phone"
    t.string   "email"
    t.string   "alt_phone"
    t.string   "alt_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contact_infos", force: true do |t|
    t.integer  "personnel_id"
    t.string   "office_number"
    t.string   "phone_number"
    t.string   "email"
    t.boolean  "display"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degree_types", force: true do |t|
    t.string   "type"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_records", force: true do |t|
    t.integer  "personnel_id"
    t.integer  "position_id"
    t.integer  "affiliation_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnels", force: true do |t|
    t.string   "uname"
    t.boolean  "mailing_list"
    t.boolean  "formally_affiliated"
    t.boolean  "retiree"
    t.boolean  "rostered"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "salutation"
    t.text     "notes"
    t.text     "research_interests"
    t.text     "skills_expertise"
    t.text     "bio"
    t.string   "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "positions", force: true do |t|
    t.string   "title"
    t.string   "display_title"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "website_types", force: true do |t|
    t.string   "type"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "websites", force: true do |t|
    t.integer  "website_type_id"
    t.string   "url"
    t.string   "display_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
