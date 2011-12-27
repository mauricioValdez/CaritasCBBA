class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.integer :campaing_id
      t.string :name
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
