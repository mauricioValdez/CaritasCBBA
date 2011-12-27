class RemoveStateColumnFromVicarious < ActiveRecord::Migration
  def self.up
    remove_column :vicarious, :state
  end

  def self.down
    add_column :vicarious, :state, :int, :default => 1
  end
end
