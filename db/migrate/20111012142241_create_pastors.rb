class CreatePastors < ActiveRecord::Migration
  def self.up
    create_table :pastors do |t|
      t.string :name
      t.string :primary_last_name
      t.string :second_last_name
      t.integer :phone_number
      t.integer :cellphone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :pastors
  end
end
