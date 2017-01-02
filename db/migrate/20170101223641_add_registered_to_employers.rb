class AddRegisteredToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :registered_on, :date
  end
end
