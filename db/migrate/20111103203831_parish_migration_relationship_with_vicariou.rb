class ParishMigrationRelationshipWithVicariou < ActiveRecord::Migration
  def self.up
    add_column :parishes, :vicariou_id, :integer
  end

  def self.down
    remove_column :parishes, :vicariou_id
  end
end
