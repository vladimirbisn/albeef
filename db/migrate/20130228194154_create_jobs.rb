class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :requirements
      t.text :responsobilities
      t.text :conditions
      t.timestamps
    end
  end
end
