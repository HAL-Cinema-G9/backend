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

ActiveRecord::Schema[7.0].define(version: 2023_07_06_221423) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "director"
    t.string "actors"
    t.integer "duration"
    t.string "thumbnail"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ticket_id"
    t.bigint "seat_id"
    t.bigint "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["schedule_id"], name: "index_reservations_on_schedule_id"
    t.index ["seat_id"], name: "index_reservations_on_seat_id"
    t.index ["ticket_id"], name: "index_reservations_on_ticket_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "movie_id"
    t.bigint "screen_id"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_schedules_on_movie_id"
    t.index ["screen_id"], name: "index_schedules_on_screen_id"
  end

  create_table "screens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seats", force: :cascade do |t|
    t.bigint "screen_id"
    t.string "column"
    t.integer "row"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["screen_id"], name: "index_seats_on_screen_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "reservations", "schedules"
  add_foreign_key "reservations", "seats"
  add_foreign_key "reservations", "tickets"
  add_foreign_key "reservations", "users"
  add_foreign_key "schedules", "movies"
  add_foreign_key "schedules", "screens"
  add_foreign_key "seats", "screens"
end
