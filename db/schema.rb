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

ActiveRecord::Schema.define(version: 20170825032240) do

  create_table "autos", force: :cascade do |t|
    t.integer "id_cliente",   limit: 4
    t.string  "placas",       limit: 255
    t.string  "notas",        limit: 255
    t.integer "anio",         limit: 4
    t.string  "vin",          limit: 255
    t.integer "id_cat_autos", limit: 4
  end

  create_table "cat_marca_auto", force: :cascade do |t|
    t.string "marca",    limit: 255
    t.string "submarca", limit: 255
  end

  create_table "cat_puntos_inspeccion", force: :cascade do |t|
    t.string "nombre",      limit: 255
    t.string "tipo",        limit: 255
    t.string "descripcion", limit: 255
  end

  create_table "cat_roles", force: :cascade do |t|
    t.string "nombre",      limit: 255
    t.string "descripcion", limit: 255
  end

  create_table "cliente_autos", force: :cascade do |t|
    t.integer "idcliente_autos", limit: 4
    t.integer "idcat_auto",      limit: 4
    t.integer "idcat_cliente",   limit: 4
  end

  create_table "cliente_autos_inspeccion", force: :cascade do |t|
    t.string   "estatus_inspeccion",      limit: 255
    t.string   "notas_inspeccion",        limit: 255
    t.datetime "fecha_inspeccion"
    t.datetime "fecha_actualizacion"
    t.integer  "idcat_puntos_inspeccion", limit: 4
    t.integer  "idcliente_autos",         limit: 4
    t.integer  "cotizacion",              limit: 4
  end

  create_table "datos_generales", force: :cascade do |t|
    t.string "nombre",   limit: 255
    t.string "apaterno", limit: 255
    t.string "amaterno", limit: 255
    t.string "correo",   limit: 255
    t.string "puesto",   limit: 255
    t.string "estatus",  limit: 255
    t.string "user_cel", limit: 255
    t.string "user_tel", limit: 255
  end

  create_table "puntos_inspeccion", force: :cascade do |t|
    t.string  "id_cat_puntos_inspeccion", limit: 255
    t.string  "nombre",                   limit: 255
    t.string  "cat_puntos_desc",          limit: 255
    t.string  "tipo",                     limit: 255
    t.integer "id_forma",                 limit: 4
    t.string  "url_video",                limit: 255
    t.string  "url_imagen",               limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",     null: false
    t.string   "encrypted_password",     limit: 255, default: ""
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.string   "avatar_path",            limit: 255
    t.integer  "sign_in_count",          limit: 4,   default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "authentication_token",   limit: 255
    t.integer  "role",                   limit: 4,   default: 0
    t.string   "name",                   limit: 255, default: "User"
    t.string   "username",               limit: 255, default: "User"
    t.integer  "id_clientes",            limit: 4
    t.integer  "id_usuario",             limit: 4
    t.string   "confirmation_token",     limit: 255
    t.integer  "cat_cliente_id",         limit: 4
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role"], name: "fk_rails_b75cce3e9e", using: :btree

  add_foreign_key "users", "cat_roles", column: "role"
end
