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

ActiveRecord::Schema.define(version: 20171112032710) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "marcos", force: :cascade do |t|
    t.integer  "topico_id"
    t.string   "sigla"
    t.string   "descricao"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "resultado_id"
  end

  add_index "marcos", ["resultado_id"], name: "index_marcos_on_resultado_id", using: :btree
  add_index "marcos", ["topico_id"], name: "index_marcos_on_topico_id", using: :btree

  create_table "questionarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "titulo"
  end

  create_table "resultados", force: :cascade do |t|
    t.integer  "questionario_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "resultados", ["questionario_id"], name: "index_resultados_on_questionario_id", using: :btree

  create_table "sessaos", force: :cascade do |t|
    t.integer  "questionario_id"
    t.string   "sigla"
    t.string   "descricao"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "sessaos", ["questionario_id"], name: "index_sessaos_on_questionario_id", using: :btree

  create_table "topicos", force: :cascade do |t|
    t.integer  "sessao_id"
    t.string   "sigla"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "topicos", ["sessao_id"], name: "index_topicos_on_sessao_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.boolean  "admin"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "marcos", "resultados"
  add_foreign_key "marcos", "topicos"
  add_foreign_key "resultados", "questionarios"
  add_foreign_key "sessaos", "questionarios"
  add_foreign_key "topicos", "sessaos"
end
