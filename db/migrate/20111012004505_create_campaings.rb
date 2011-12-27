class CreateCampaings < ActiveRecord::Migration
  def self.up
    create_table :campaings do |t|
      t.string :name
      t.string :location
      t.text :description
      t.date :date_ini
      t.date :date_end
      t.string :responsible
      t.string :state

      t.timestamps
    end
  end

  def self.down
    drop_table :campaings
  end
end
