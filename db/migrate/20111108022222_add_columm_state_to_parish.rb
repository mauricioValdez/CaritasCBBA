class AddColummStateToParish < ActiveRecord::Migration
  def self.up
    add_column :parishes, :state, :boolean, :default => true
  end

  def self.down
    remove_column :parishes, :state
  end
end
