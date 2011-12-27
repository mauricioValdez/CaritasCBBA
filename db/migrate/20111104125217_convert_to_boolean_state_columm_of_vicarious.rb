class ConvertToBooleanStateColummOfVicarious < ActiveRecord::Migration
  def self.up
    add_column :vicarious, :state, :boolean, :default => true
  end

  def self.down
     remove_column :vicarious, :state
  end
end
