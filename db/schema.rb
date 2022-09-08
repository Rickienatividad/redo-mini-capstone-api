ActiveRecord::Schema[7.0].define(version: 2022_09_08_022133) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "image_url"
    t.text "description"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
