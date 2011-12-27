class AddGroupIdToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :group_id, :integer
  end

  def self.down
    remove_column :volunteers, :group_id
  end
end
