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

ActiveRecord::Schema.define(version: 2019_03_29_133529) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "changes_proposals", force: :cascade do |t|
    t.string "message"
    t.string "status"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_changes_proposals_on_recipe_id"
  end

  create_table "doses", force: :cascade do |t|
    t.integer "quantity"
    t.string "unit"
    t.bigint "step_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_doses_on_ingredient_id"
    t.index ["step_id"], name: "index_doses_on_step_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipe_tags", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_recipe_tags_on_recipe_id"
    t.index ["tag_id"], name: "index_recipe_tags_on_tag_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "photo"
    t.string "title"
    t.string "subtitle"
    t.string "description"
    t.string "prep_time"
    t.string "cook_time"
    t.string "rest_time"
    t.boolean "published", default: false
    t.bigint "user_id"
    t.bigint "original_recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "upvote", default: 0
    t.integer "servings", default: 0
    t.date "published_on"
    t.string "kind", default: "original"
    t.index ["original_recipe_id"], name: "index_recipes_on_original_recipe_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "step_utensils", force: :cascade do |t|
    t.bigint "step_id"
    t.bigint "utensil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["step_id"], name: "index_step_utensils_on_step_id"
    t.index ["utensil_id"], name: "index_step_utensils_on_utensil_id"
  end

  create_table "steps", force: :cascade do |t|
    t.text "content"
    t.integer "position", default: 1
    t.bigint "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_steps_on_recipe_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
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
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "utensils", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "changes_proposals", "recipes"
  add_foreign_key "doses", "ingredients"
  add_foreign_key "doses", "steps"
  add_foreign_key "recipe_tags", "recipes"
  add_foreign_key "recipe_tags", "tags"
  add_foreign_key "recipes", "recipes", column: "original_recipe_id"
  add_foreign_key "recipes", "users"
  add_foreign_key "step_utensils", "steps"
  add_foreign_key "step_utensils", "utensils"
  add_foreign_key "steps", "recipes"
end
