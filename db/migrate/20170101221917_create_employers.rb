class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :hbx_id
      t.string :legal_name
      t.string :dba
      t.string :fein
      t.boolean :is_active
      t.string :user

      t.timestamps null: false
    end
  end
end
