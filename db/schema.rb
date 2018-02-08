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

ActiveRecord::Schema.define(version: 20180207201331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.string "createur_name"
    t.string "createur_prenom"
    t.string "createur_date_naissance"
    t.string "createur_ville_naissance"
    t.string "createur_pays_naissance"
    t.string "createur_rue"
    t.string "createur_codepostal"
    t.string "createur_ville"
    t.string "createur_pays"
    t.string "createur_mail"
    t.string "createur_tel"
    t.string "dest_nom"
    t.string "dest_prenom"
    t.string "dest_mail"
    t.string "dest_tel"
    t.string "dest_rue"
    t.string "dest_codepostal"
    t.string "dest_ville"
    t.string "dest_pays"
    t.string "dest_2_nom"
    t.string "dest_2_prenom"
    t.string "dest_2_mail"
    t.string "dest_2_tel"
    t.string "dest_2_rue"
    t.string "dest_2_codepostal"
    t.string "dest_2_ville"
    t.string "dest_2_pays"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "video"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "messages", "users"
end
