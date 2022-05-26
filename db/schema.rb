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

ActiveRecord::Schema[7.0].define(version: 2022_05_15_140427) do
  create_table "adherents", force: :cascade do |t|
    t.string "prenom", null: false
    t.string "nom", null: false
    t.string "statut", null: false
    t.string "pass", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.text "titre"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materiels", force: :cascade do |t|
    t.string "name"
    t.string "disponibilte"
    t.string "etat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
