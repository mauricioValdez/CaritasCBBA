class WorkshopRemoveParish < ActiveRecord::Migration
  def self.up
    remove_column :workshops, :parish
  end

  def self.down
  end
end
