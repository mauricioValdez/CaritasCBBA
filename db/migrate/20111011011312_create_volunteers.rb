class CreateVolunteers < ActiveRecord::Migration
  def self.up
    create_table :volunteers do |t|
      t.string :name
      t.string :last_name
      t.string :second_last_name
      t.string :profession
      t.integer :phone_number
      t.integer :movil
      t.date :date_of_birth
      t.string :genre
      t.string :position

      t.timestamps
    end
  end

  def self.down
    drop_table :volunteers
  end
end
