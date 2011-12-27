class AddStateColumnToVicarious < ActiveRecord::Migration
  def self.up
    add_column :vicarious, :state, :int, :default => 1
  end

  def self.down
    remove_column :vicarious, :state
  end
end
