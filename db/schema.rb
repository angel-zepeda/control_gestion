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

ActiveRecord::Schema.define(version: 2019_01_29_223315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pensioners", force: :cascade do |t|
    t.integer "turno"
    t.integer "numero_oficio"
    t.date "fecha_oficio"
    t.date "fecha_recepcion"
    t.string "promovente"
    t.string "numero_juicio"
    t.string "turnado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "anexo1_file_name"
    t.string "anexo1_content_type"
    t.bigint "anexo1_file_size"
    t.datetime "anexo1_updated_at"
    t.string "anexo2_file_name"
    t.string "anexo2_content_type"
    t.bigint "anexo2_file_size"
    t.datetime "anexo2_updated_at"
    t.string "anexo3_file_name"
    t.string "anexo3_content_type"
    t.bigint "anexo3_file_size"
    t.datetime "anexo3_updated_at"
    t.string "anexo4_file_name"
    t.string "anexo4_content_type"
    t.bigint "anexo4_file_size"
    t.datetime "anexo4_updated_at"
    t.string "anexo5_file_name"
    t.string "anexo5_content_type"
    t.bigint "anexo5_file_size"
    t.datetime "anexo5_updated_at"
    t.string "anexo6_file_name"
    t.string "anexo6_content_type"
    t.bigint "anexo6_file_size"
    t.datetime "anexo6_updated_at"
    t.string "anexo7_file_name"
    t.string "anexo7_content_type"
    t.bigint "anexo7_file_size"
    t.datetime "anexo7_updated_at"
    t.string "anexo8_file_name"
    t.string "anexo8_content_type"
    t.bigint "anexo8_file_size"
    t.datetime "anexo8_updated_at"
    t.string "anexo9_file_name"
    t.string "anexo9_content_type"
    t.bigint "anexo9_file_size"
    t.datetime "anexo9_updated_at"
    t.string "anexo10_file_name"
    t.string "anexo10_content_type"
    t.bigint "anexo10_file_size"
    t.datetime "anexo10_updated_at"
    t.string "anexo11_file_name"
    t.string "anexo11_content_type"
    t.bigint "anexo11_file_size"
    t.datetime "anexo11_updated_at"
    t.string "anexo12_file_name"
    t.string "anexo12_content_type"
    t.bigint "anexo12_file_size"
    t.datetime "anexo12_updated_at"
    t.string "numero_correspondencia"
    t.integer "numero_pension"
    t.string "sala"
    t.string "tipo_expediente"
    t.string "numero_expediente"
    t.string "estado_expediente"
    t.text "observaciones"
    t.string "letra"
    t.date "termino"
    t.date "envio_juridico"
    t.float "monto_cheque"
    t.float "ajuste_cuota"
    t.string "estatus_expediente"
    t.string "clasificacion"
    t.date "mes_instalacion"
    t.string "que_se_liquida"
    t.date "fecha_liquidacion"
    t.string "autoridad_cumplimiento"
    t.string "materia"
    t.string "numero_uj"
    t.date "fecha_uj"
    t.integer "numero_sp"
    t.date "fecha_sp"
    t.date "fecha_sentencia"
    t.string "liquidador"
    t.string "integrador"
    t.string "estado_final"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
