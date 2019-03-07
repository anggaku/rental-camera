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

ActiveRecord::Schema.define(version: 20190307060748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aksesoris", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_aksesoris_on_slug", unique: true
  end

  create_table "availability_products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_availability_products_on_slug", unique: true
  end

  create_table "banks", force: :cascade do |t|
    t.string "kode_bank"
    t.string "nama_bank"
    t.string "no_rekening"
    t.string "nama_rekening"
    t.text "alamat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brand_products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_brand_products_on_slug", unique: true
  end

  create_table "cameras", force: :cascade do |t|
    t.integer "category_product_id"
    t.integer "type_camera_id"
    t.integer "merk_camera_id"
    t.integer "availability_product_id"
    t.string "name"
    t.text "camera_description"
    t.text "camera_kelengkapan"
    t.decimal "price"
    t.string "review_video"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_cameras_on_slug", unique: true
  end

  create_table "category_products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_category_products_on_slug", unique: true
  end

  create_table "clients", force: :cascade do |t|
    t.string "id_client"
    t.string "client_name"
    t.text "alamat_rumah"
    t.text "alamat_kantor"
    t.string "no_hp"
    t.string "id_line"
    t.string "id_ig"
    t.string "id_fb"
    t.string "email"
    t.string "kampus"
    t.string "upload_ktp"
    t.string "upload_kk"
    t.string "upload_identitas"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.index ["slug"], name: "index_clients_on_slug", unique: true
  end

  create_table "friendly_id_slugs", id: :serial, force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "no_invoice"
    t.integer "client_id"
    t.date "tgl_invoice"
    t.date "tgl_awal"
    t.date "tgl_akhir"
    t.integer "product_id"
    t.text "lokasi"
    t.decimal "harga"
    t.decimal "diskon"
    t.decimal "total_biaya"
    t.string "tahun"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lensas", force: :cascade do |t|
    t.integer "category_product_id"
    t.integer "merk_lensa_id"
    t.integer "availability_product_id"
    t.string "name"
    t.string "slug"
    t.text "lensa_description"
    t.text "lensa_kelengkapan"
    t.decimal "price"
    t.string "review_video"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_lensas_on_slug", unique: true
  end

  create_table "merk_cameras", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_merk_cameras_on_slug", unique: true
  end

  create_table "merk_lensas", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_merk_lensas_on_slug", unique: true
  end

  create_table "payments", force: :cascade do |t|
    t.integer "invoice_id"
    t.integer "client_id"
    t.date "tgl_payment"
    t.decimal "jumlah_diterima"
    t.decimal "total_keseluruhan"
    t.integer "bank_id"
    t.string "status_sewa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peralatans", force: :cascade do |t|
    t.integer "category_product_id"
    t.integer "availability_product_id"
    t.integer "aksesori_id"
    t.string "name"
    t.string "slug"
    t.text "peralatan_description"
    t.text "peralatan_kelengkapan"
    t.decimal "price"
    t.string "review_video"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_peralatans_on_slug", unique: true
  end

  create_table "products", force: :cascade do |t|
    t.integer "category_product_id"
    t.integer "brand_product_id"
    t.integer "availability_product_id"
    t.string "name"
    t.text "description"
    t.text "kelengkapan"
    t.integer "price"
    t.string "review_video"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.string "image6"
    t.string "image7"
    t.string "image8"
    t.string "image9"
    t.string "image10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "type_camera_id"
    t.integer "merk_lensa_id"
    t.integer "aksesori_id"
    t.index ["slug"], name: "index_products_on_slug", unique: true
  end

  create_table "type_cameras", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "category_product_id"
    t.index ["slug"], name: "index_type_cameras_on_slug", unique: true
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

end
