class CreateVicarious < ActiveRecord::Migration
  def self.up
    create_table :vicarious do |t|
      t.string :nameVicariou
      t.string :ubication
      t.string :transport
      t.string :telephone
      t.string :vicarName

      t.timestamps
    end

  end

  def self.down
    drop_table :vicarious
  end
end
