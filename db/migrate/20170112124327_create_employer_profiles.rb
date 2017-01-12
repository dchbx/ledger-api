class CreateEmployerProfiles < ActiveRecord::Migration
  def change
    create_table :employer_profiles do |t|
      #t.references :organization, polymorphic: true, index: true
      
      t.timestamps null: false
    end
  end
end
