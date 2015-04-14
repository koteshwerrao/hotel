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

ActiveRecord::Schema.define(version: 20150225044517) do

  create_table "activities", force: :cascade do |t|
    t.integer  "user_id",                          limit: 4
    t.integer  "contact_id",                       limit: 4
    t.integer  "order_id",                         limit: 4
    t.integer  "post_requirement_id",              limit: 4
    t.boolean  "seeked_shared",                    limit: 1, default: false
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.integer  "skill_post_requirement_id",        limit: 4
    t.integer  "rider_post_requirement_id",        limit: 4
    t.integer  "peer_service_post_requirement_id", limit: 4
  end

  create_table "ads", force: :cascade do |t|
    t.integer  "box_1",      limit: 4
    t.integer  "box_2",      limit: 4
    t.integer  "box_3",      limit: 4
    t.integer  "box_4",      limit: 4
    t.integer  "box_5",      limit: 4
    t.integer  "box_6",      limit: 4
    t.integer  "box_7",      limit: 4
    t.integer  "box_8",      limit: 4
    t.integer  "box_9",      limit: 4
    t.integer  "box_10",     limit: 4
    t.string   "ip",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "book_activities", force: :cascade do |t|
    t.integer  "user_id",                  limit: 4
    t.integer  "contact_id",               limit: 4
    t.integer  "book_order_id",            limit: 4
    t.integer  "book_post_requirement_id", limit: 4
    t.boolean  "seeked_shared",            limit: 1, default: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "book_messages", force: :cascade do |t|
    t.integer  "user_id",                  limit: 4
    t.integer  "posted_to",                limit: 4
    t.text     "content",                  limit: 65535
    t.boolean  "read",                     limit: 1
    t.string   "subject",                  limit: 255
    t.boolean  "order_status",             limit: 1
    t.boolean  "accepted",                 limit: 1
    t.boolean  "trashed",                  limit: 1
    t.integer  "book_post_requirement_id", limit: 4
    t.integer  "location_id",              limit: 4
    t.integer  "book_order_id",            limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "book_negotiates", force: :cascade do |t|
    t.integer  "book_post_requirement_id", limit: 4
    t.integer  "user_id",                  limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "nego_id",                  limit: 4
  end

  create_table "book_order_cancels", force: :cascade do |t|
    t.integer  "book_order_id", limit: 4
    t.date     "cancel_date"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "book_orders", force: :cascade do |t|
    t.integer  "user_id",                  limit: 4
    t.integer  "provider_id",              limit: 4
    t.integer  "book_post_requirement_id", limit: 4
    t.date     "order_date"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "book_post_requirements", force: :cascade do |t|
    t.integer  "service_id",         limit: 4
    t.integer  "city_id",            limit: 4
    t.integer  "location_id",        limit: 4
    t.float    "latitude",           limit: 24
    t.float    "longitude",          limit: 24
    t.text     "description",        limit: 65535
    t.string   "name",               limit: 255
    t.string   "author",             limit: 255
    t.integer  "user_id",            limit: 4
    t.boolean  "seeker_provider",    limit: 1
    t.string   "isbn_number",        limit: 255
    t.date     "date_of_posting"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.float    "rent",               limit: 24
    t.integer  "category_id",        limit: 4
    t.text     "review",             limit: 65535
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "city_name",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "food_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "location_name", limit: 255
    t.integer  "city_id",       limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "meal_types", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content",                          limit: 65535
    t.integer  "user_id",                          limit: 4
    t.integer  "posted_to",                        limit: 4
    t.boolean  "read",                             limit: 1,     default: false
    t.datetime "created_at",                                                     null: false
    t.datetime "updated_at",                                                     null: false
    t.string   "subject",                          limit: 255
    t.boolean  "order_status",                     limit: 1,     default: false
    t.boolean  "accepted",                         limit: 1,     default: false
    t.boolean  "trashed",                          limit: 1,     default: false
    t.integer  "post_requirement_id",              limit: 4
    t.string   "food",                             limit: 255
    t.string   "location",                         limit: 255
    t.integer  "order_id",                         limit: 4
    t.integer  "skill_post_requirement_id",        limit: 4
    t.integer  "rider_post_requirement_id",        limit: 4
    t.integer  "peer_service_post_requirement_id", limit: 4
  end

  create_table "negotiates", force: :cascade do |t|
    t.integer  "post_requirement_id",              limit: 4
    t.string   "user_id",                          limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "nego_id",                          limit: 4
    t.integer  "skill_post_requirement_id",        limit: 4
    t.integer  "rider_post_requirement_id",        limit: 4
    t.integer  "peer_service_post_requirement_id", limit: 4
  end

  create_table "order_cancels", force: :cascade do |t|
    t.integer  "order_id",    limit: 4
    t.date     "cancel_date"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id",                          limit: 4
    t.integer "provider_id",                      limit: 4
    t.integer "post_requirement_id",              limit: 4
    t.date    "order_date"
    t.integer "skill_post_requirement_id",        limit: 4
    t.integer "rider_post_requirement_id",        limit: 4
    t.integer "peer_service_post_requirement_id", limit: 4
  end

  create_table "peer_service_post_requirements", force: :cascade do |t|
    t.integer  "city_id",             limit: 4
    t.integer  "service_id",          limit: 4
    t.integer  "peer_service_id",     limit: 4
    t.integer  "location_id",         limit: 4
    t.integer  "user_id",             limit: 4
    t.boolean  "seeker_provider",     limit: 1
    t.float    "latitude",            limit: 24
    t.text     "description",         limit: 65535
    t.float    "longitude",           limit: 24
    t.boolean  "home_service",        limit: 1
    t.text     "service_in_one_line", limit: 65535
    t.date     "when"
    t.float    "charges",             limit: 24
    t.boolean  "mon",                 limit: 1
    t.boolean  "tue",                 limit: 1
    t.boolean  "wed",                 limit: 1
    t.boolean  "thu",                 limit: 1
    t.boolean  "fri",                 limit: 1
    t.boolean  "sat",                 limit: 1
    t.boolean  "sun",                 limit: 1
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "peer_file_name",      limit: 225
    t.string   "peer_content_type",   limit: 225
    t.integer  "peer_file_size",      limit: 4
    t.datetime "peer_updated_at"
    t.text     "review",              limit: 65535
  end

  create_table "peer_services", force: :cascade do |t|
    t.string   "peer_service_type", limit: 225
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "post_requirements", force: :cascade do |t|
    t.integer  "service_id",              limit: 4
    t.integer  "provider_id",             limit: 4
    t.integer  "city_id",                 limit: 4
    t.integer  "location_id",             limit: 4
    t.integer  "food_type_id",            limit: 4
    t.integer  "meal_type_id",            limit: 4
    t.integer  "region_id",               limit: 4
    t.float    "latitude",                limit: 24
    t.float    "longitude",               limit: 24
    t.integer  "no_of_persons",           limit: 4
    t.decimal  "budget",                                precision: 8, scale: 2
    t.text     "details",                 limit: 65535
    t.integer  "user_id",                 limit: 4
    t.boolean  "seeker_provider",         limit: 1,                             default: true
    t.datetime "created_at",                                                                   null: false
    t.datetime "updated_at",                                                                   null: false
    t.string   "food_image_file_name",    limit: 255
    t.string   "food_image_content_type", limit: 255
    t.integer  "food_image_file_size",    limit: 4
    t.datetime "food_image_updated_at"
    t.text     "review",                  limit: 65535
  end

  create_table "providers", force: :cascade do |t|
    t.string   "provider_type", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "negotiate_id",                     limit: 4
    t.integer  "book_negotiate_id",                limit: 4
    t.integer  "user_id",                          limit: 4
    t.integer  "rated_id",                         limit: 4
    t.integer  "post_requirement_id",              limit: 4
    t.integer  "book_post_requirement_id",         limit: 4
    t.integer  "rated_no",                         limit: 4
    t.string   "service_type",                     limit: 255
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "skill_post_requirement_id",        limit: 4
    t.integer  "rider_post_requirement_id",        limit: 4
    t.integer  "peer_service_post_requirement_id", limit: 4
  end

  add_index "rates", ["book_negotiate_id"], name: "index_rates_on_book_negotiate_id", using: :btree
  add_index "rates", ["book_post_requirement_id"], name: "index_rates_on_book_post_requirement_id", using: :btree
  add_index "rates", ["negotiate_id"], name: "index_rates_on_negotiate_id", using: :btree
  add_index "rates", ["post_requirement_id"], name: "index_rates_on_post_requirement_id", using: :btree
  add_index "rates", ["user_id"], name: "index_rates_on_user_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "content",                   limit: 65535
    t.integer  "user_id",                   limit: 4
    t.integer  "post_requirement_id",       limit: 4
    t.integer  "book_post_requirement_id",  limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "skill_post_requirement_id", limit: 4
    t.integer  "negotiate_id",              limit: 4
    t.integer  "book_negotiate_id",         limit: 4
  end

  create_table "rider_post_requirements", force: :cascade do |t|
    t.integer  "city_id",            limit: 4
    t.integer  "ride_id",            limit: 4
    t.integer  "service_id",         limit: 4
    t.integer  "location_id",        limit: 4
    t.boolean  "seeker_provider",    limit: 1
    t.float    "latitute",           limit: 24
    t.float    "longitute",          limit: 24
    t.text     "description",        limit: 65535
    t.boolean  "home_service",       limit: 1
    t.text     "ride_in_one_line",   limit: 65535
    t.float    "charges",            limit: 24
    t.boolean  "mon",                limit: 1
    t.boolean  "tue",                limit: 1
    t.boolean  "wed",                limit: 1
    t.boolean  "thu",                limit: 1
    t.boolean  "fri",                limit: 1
    t.boolean  "sat",                limit: 1
    t.boolean  "sun",                limit: 1
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "rider_file_name",    limit: 225
    t.string   "rider_content_type", limit: 225
    t.integer  "rider_file_size",    limit: 4
    t.datetime "rider_updated_at"
    t.string   "user_id",            limit: 45
  end

  create_table "rides", force: :cascade do |t|
    t.string   "ride_type",  limit: 225
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "service_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "skill_post_requirements", force: :cascade do |t|
    t.integer  "service_id",          limit: 4
    t.integer  "city_id",             limit: 4
    t.integer  "location_id",         limit: 4
    t.integer  "sub_category_id",     limit: 4
    t.integer  "user_id",             limit: 4
    t.boolean  "seeker_provider",     limit: 1
    t.float    "latitude",            limit: 24
    t.float    "longitude",           limit: 24
    t.text     "description",         limit: 65535
    t.boolean  "home_service",        limit: 1
    t.text     "service_in_one_line", limit: 65535
    t.float    "charges",             limit: 24
    t.boolean  "mon",                 limit: 1
    t.boolean  "tue",                 limit: 1
    t.boolean  "wed",                 limit: 1
    t.boolean  "thu",                 limit: 1
    t.boolean  "fri",                 limit: 1
    t.boolean  "sat",                 limit: 1
    t.boolean  "sun",                 limit: 1
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "skill_file_name",     limit: 255
    t.string   "skill_content_type",  limit: 255
    t.integer  "skill_file_size",     limit: 4
    t.datetime "skill_updated_at"
    t.text     "review",              limit: 65535
  end

  add_index "skill_post_requirements", ["city_id"], name: "index_skill_post_requirements_on_city_id", using: :btree
  add_index "skill_post_requirements", ["location_id"], name: "index_skill_post_requirements_on_location_id", using: :btree
  add_index "skill_post_requirements", ["service_id"], name: "index_skill_post_requirements_on_service_id", using: :btree
  add_index "skill_post_requirements", ["sub_category_id"], name: "index_skill_post_requirements_on_sub_category_id", using: :btree
  add_index "skill_post_requirements", ["user_id"], name: "index_skill_post_requirements_on_user_id", using: :btree

  create_table "sub_categories", force: :cascade do |t|
    t.string   "sub_category_type", limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "",    null: false
    t.string   "encrypted_password",     limit: 255,   default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,     default: 0,     null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.string   "name",                   limit: 255
    t.date     "dob"
    t.string   "phone_no",               limit: 255
    t.integer  "city_id",                limit: 4
    t.string   "location",               limit: 255
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.text     "address",                limit: 65535
    t.string   "photo_file_name",        limit: 255
    t.string   "photo_content_type",     limit: 255
    t.integer  "photo_file_size",        limit: 4
    t.datetime "photo_updated_at"
    t.boolean  "admin",                  limit: 1,     default: false
    t.boolean  "status",                 limit: 1,     default: true
    t.string   "provider",               limit: 255
    t.string   "uid",                    limit: 255
    t.string   "fb_link",                limit: 225
    t.string   "twitter_link",           limit: 225
    t.string   "g_link",                 limit: 225
    t.text     "review",                 limit: 65535
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
