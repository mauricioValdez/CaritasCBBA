class WorkshopAddIdParish < ActiveRecord::Migration
  def self.up
    add_column :workshops, :parish_id, :integer
  end

  def self.down
    remove_column :workshops, :parish_id
  end
end
