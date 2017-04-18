class CreateFmsRoles < ActiveRecord::Migration
  def change
    create_table :fms_roles do |t|
      t.string :name
      t.boolean :view_employer_profile, default: false
      t.boolean :view_employee_dependent_data, default: false
      t.boolean :view_enrollment_premium_data, default: false
      t.boolean :view_accounts_receivable, default: false
      t.boolean :view_invoices, default: false
      t.boolean :rollback_invoice, default: false
      t.boolean :rebill_invoice, default: false
      t.boolean :view_accounts_payable, default: false
      t.boolean :approve_hr_820, default: false
      t.boolean :reject_hr_820, default: false
      t.boolean :regenerate_hr_820, default: false
      t.boolean :rollback_carrier_820, default: false
      t.boolean :regenerate_carrier_820, default: false
      t.boolean :view_memo, default: false
      t.boolean :add_remove_users_and_roles, default: false
      t.boolean :reports, default: false
      t.boolean :enter_employer_notes, default: false
      t.boolean :view_employer_notes, default: false
      t.boolean :tasks, default: false
      t.boolean :refunds, default: false
      t.boolean :accept_payments, default: false
      t.boolean :allocate_payments, default: false
      t.boolean :monthly_closing, default: false
      t.boolean :yearly_closing, default: false
      t.boolean :view_accounts_payable, default: false
      t.boolean :create_sign_memo, default: false
      t.boolean :save_send_memo, default: false
      t.boolean :record_memo_response, default: false
      t.boolean :reconcile_820, default: false
      t.boolean :display_invoices_to_pay, default: false
      t.boolean :accept_payment_for_invoices, default: false
      t.boolean :allow_for_onetime_payment, default: false
      t.boolean :allow_for_monthly_recurring_payment, default: false
      t.boolean :transmitted_to_sftp_folder, default: false
      t.boolean :standardized_tbd_file_format, default: false
      t.boolean :provides_payment_amount_emp_gr_invoice_id, default: false
      t.boolean :denotes_payment_data_if_no_match, default: false
      t.boolean :receive_ach_payments, default: false
      t.boolean :send_payment_acknowledgement, default: false
      t.boolean :receive_820_files, default: false
      t.boolean :acknowledge_820_files, default: false
      t.boolean :reconcile_820_and_payments, default: false
      t.boolean :receive_invoice, default: false
      t.boolean :pay_invoice_via_methods, default: false
      t.boolean :receive_print_files_for_invoice, default: false
      t.boolean :print_stuff_mail_invoices, default: false
      t.boolean :support_varying_invoice_freq_emp, default: false
      t.boolean :support_on_demand_print_file_request_for_invoices, default: false
      t.boolean :process_x12_outbound_carrier_820, default: false
      t.boolean :receive_inbound_carrier_820, default: false
      t.boolean :notify_system_of_success_failure_inbound_carrier_response, default: false
      t.boolean :save_copy_of_carrier_repsonse_in_location, default: false
      t.boolean :support_carrier_820_reconciliation_process, default: false

      t.timestamps null: false
    end
  end
end
