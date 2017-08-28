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

  create_table "cat_autos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "idcat_autos"
    t.string  "cat_autos_placas"
    t.string  "cat_autos_notas"
    t.integer "cat_autos_anio"
    t.string  "cat_autos_marca"
    t.string  "cat_autos_modelo"
    t.string  "cat_autos_vin"
    t.integer "cat_marca_auto"
  end

  create_table "cat_clientes", id: :bigint, default: nil, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "cat_cliente_id"
    t.string  "cat_cliente_nombre"
    t.string  "cat_cliente_paterno"
    t.string  "cat_cliente_materno"
    t.string  "cat_cliente_correo"
    t.bigint  "cat_cliente_tel"
    t.bigint  "cat_cliente_cel"
  end

  create_table "cat_marca_auto", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "marca"
    t.string "submarca"
  end

  create_table "cat_puntos_inspeccion", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "tipo"
    t.string "descripcion"
  end

  create_table "cat_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "descripcion"
  end

  create_table "cat_usuario", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cat_usuario_nombre"
    t.string "cat_usuario_paterno"
    t.string "cat_usuario_materno"
    t.string "cat_usuario_correo"
    t.string "cat_usuario_puesto"
    t.string "cat_usuario_estatus"
    t.string "cat_usuario_cel"
    t.string "cat_usuario_tel"
  end

  create_table "cliente_autos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "idcliente_autos"
    t.integer "idcat_auto"
    t.integer "idcat_cliente"
  end

  create_table "cliente_autos_inspeccion", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "estatus_inspeccion"
    t.string   "notas_inspeccion"
    t.datetime "fecha_inspeccion"
    t.datetime "fecha_actualizacion"
    t.integer  "idcat_puntos_inspeccion"
    t.integer  "idcliente_autos"
    t.integer  "cotizacion"
    t.string   "url_video"
    t.string   "url_imagen"
  end

  create_table "puntos_inspeccion", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "id_cat_puntos_inspeccion"
    t.string "cat_puntos_desc"
    t.string "tipo"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "authentication_token"
    t.integer  "role",                   default: 0
    t.string   "name",                   default: "User"
    t.string   "username",               default: "User"
    t.integer  "id_clientes"
    t.integer  "id_usuario"
    t.string   "confirmation_token"
    t.integer  "cat_cliente_id"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["role"], name: "fk_rails_b75cce3e9e", using: :btree
  end

  add_foreign_key "users", "cat_roles", column: "role"
end
