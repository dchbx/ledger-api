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

ActiveRecord::Schema.define(version: 20170208190059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employer_profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employers", force: :cascade do |t|
    t.string   "hbx_id"
    t.string   "legal_name"
    t.string   "dba"
    t.string   "fein"
    t.boolean  "is_active"
    t.string   "user"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.date     "registered_on"
  end

  create_table "fms_roles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "view_employer_profile",                                     default: false
    t.boolean  "view_employee_dependent_data",                              default: false
    t.boolean  "view_enrollment_premium_data",                              default: false
    t.boolean  "view_accounts_receivable",                                  default: false
    t.boolean  "view_invoices",                                             default: false
    t.boolean  "rollback_invoice",                                          default: false
    t.boolean  "rebill_invoice",                                            default: false
    t.boolean  "view_accounts_payable",                                     default: false
    t.boolean  "approve_hr_820",                                            default: false
    t.boolean  "reject_hr_820",                                             default: false
    t.boolean  "regenerate_hr_820",                                         default: false
    t.boolean  "rollback_carrier_820",                                      default: false
    t.boolean  "regenerate_carrier_820",                                    default: false
    t.boolean  "view_memo",                                                 default: false
    t.boolean  "add_remove_users_and_roles",                                default: false
    t.boolean  "reports",                                                   default: false
    t.boolean  "enter_employer_notes",                                      default: false
    t.boolean  "view_employer_notes",                                       default: false
    t.boolean  "tasks",                                                     default: false
    t.boolean  "refunds",                                                   default: false
    t.boolean  "accept_payments",                                           default: false
    t.boolean  "allocate_payments",                                         default: false
    t.boolean  "monthly_closing",                                           default: false
    t.boolean  "yearly_closing",                                            default: false
    t.boolean  "create_sign_memo",                                          default: false
    t.boolean  "save_send_memo",                                            default: false
    t.boolean  "record_memo_response",                                      default: false
    t.boolean  "reconcile_820",                                             default: false
    t.boolean  "display_invoices_to_pay",                                   default: false
    t.boolean  "accept_payment_for_invoices",                               default: false
    t.boolean  "allow_for_onetime_payment",                                 default: false
    t.boolean  "allow_for_monthly_recurring_payment",                       default: false
    t.boolean  "transmitted_to_sftp_folder",                                default: false
    t.boolean  "standardized_tbd_file_format",                              default: false
    t.boolean  "provides_payment_amount_emp_gr_invoice_id",                 default: false
    t.boolean  "denotes_payment_data_if_no_match",                          default: false
    t.boolean  "receive_ach_payments",                                      default: false
    t.boolean  "send_payment_acknowledgement",                              default: false
    t.boolean  "receive_820_files",                                         default: false
    t.boolean  "acknowledge_820_files",                                     default: false
    t.boolean  "reconcile_820_and_payments",                                default: false
    t.boolean  "receive_invoice",                                           default: false
    t.boolean  "pay_invoice_via_methods",                                   default: false
    t.boolean  "receive_print_files_for_invoice",                           default: false
    t.boolean  "print_stuff_mail_invoices",                                 default: false
    t.boolean  "support_varying_invoice_freq_emp",                          default: false
    t.boolean  "support_on_demand_print_file_request_for_invoices",         default: false
    t.boolean  "process_x12_outbound_carrier_820",                          default: false
    t.boolean  "receive_inbound_carrier_820",                               default: false
    t.boolean  "notify_system_of_success_failure_inbound_carrier_response", default: false
    t.boolean  "save_copy_of_carrier_repsonse_in_location",                 default: false
    t.boolean  "support_carrier_820_reconciliation_process",                default: false
    t.datetime "created_at",                                                                null: false
    t.datetime "updated_at",                                                                null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "hbx_id"
    t.string   "legal_name"
    t.string   "dba_name"
    t.string   "fein"
    t.string   "account_number", limit: 20
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "organizations", ["account_number"], name: "index_organizations_on_account_number", using: :btree
  add_index "organizations", ["fein"], name: "index_organizations_on_fein", using: :btree
  add_index "organizations", ["hbx_id"], name: "index_organizations_on_hbx_id", unique: true, using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "is_active",  default: true
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "people", ["user_id"], name: "index_people_on_user_id", using: :btree

  create_table "permissions", force: :cascade do |t|
    t.string  "name"
    t.boolean "modify_family", default: false
    t.integer "user_id"
  end

  create_table "plutus_accounts", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.boolean  "contra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plutus_accounts", ["name", "type"], name: "index_plutus_accounts_on_name_and_type", using: :btree

  create_table "plutus_amounts", force: :cascade do |t|
    t.string  "type"
    t.integer "account_id"
    t.integer "entry_id"
    t.decimal "amount",     precision: 20, scale: 10
  end

  add_index "plutus_amounts", ["account_id", "entry_id"], name: "index_plutus_amounts_on_account_id_and_entry_id", using: :btree
  add_index "plutus_amounts", ["entry_id", "account_id"], name: "index_plutus_amounts_on_entry_id_and_account_id", using: :btree
  add_index "plutus_amounts", ["type"], name: "index_plutus_amounts_on_type", using: :btree

  create_table "plutus_entries", force: :cascade do |t|
    t.string   "description"
    t.date     "date"
    t.integer  "commercial_document_id"
    t.string   "commercial_document_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plutus_entries", ["commercial_document_id", "commercial_document_type"], name: "index_entries_on_commercial_doc", using: :btree
  add_index "plutus_entries", ["date"], name: "index_plutus_entries_on_date", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.boolean  "admin",                  default: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "role_id",                default: 0
    t.boolean  "is_active",              default: true
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "people", "users"
end
