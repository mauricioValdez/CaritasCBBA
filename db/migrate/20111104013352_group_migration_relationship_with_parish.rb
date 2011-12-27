class GroupMigrationRelationshipWithParish < ActiveRecord::Migration
  def self.up
    add_column :groups, :parish_id, :integer
  end

  def self.down
    remove_column :groups, :parish_id
  end
end
