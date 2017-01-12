class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :hbx_id
      t.string :legal_name
      t.string :dba_name
      t.string :fein
      t.string :account_number, limit: 20

      t.timestamps null: false
    end
      add_index :organizations, :hbx_id, unique: true
      add_index :organizations, :fein
      add_index :organizations, :account_number
  end
end
