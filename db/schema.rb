
ActiveRecord::Schema.define(version: 2020_02_11_043602) do

  create_table "nouns", force: :cascade do |t|
    t.string "english"
    t.string "IPA"
    t.string "latin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
