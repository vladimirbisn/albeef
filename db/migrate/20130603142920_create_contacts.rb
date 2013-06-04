class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :phone
      t.string :fax
      t.string :emails

      t.timestamps
    end
  end
end
