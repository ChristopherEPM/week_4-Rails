class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :adress
      t.string :email 
      t.integer :phone
      
      t.timestamps null: false
    end
  end
end
