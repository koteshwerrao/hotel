class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
    t.text :content 
    t.integer  "user_id"
    t.integer  "post_requirement_id"
    t.integer  "book_post_requirement_id"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "skill_post_requirement_id"

    end
  end
end
