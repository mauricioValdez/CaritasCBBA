class CreateParishes < ActiveRecord::Migration
  def self.up
    create_table :parishes do |t|
      t.string :parish_name
      t.string :ubication
      t.string :transport
      t.integer :telephone
      t.string :pastor_name
      t.boolean :sensitize

      t.timestamps
    end
  end

  def self.down
    drop_table :parishes
  end
end
