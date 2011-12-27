class ParishesMigrations < ActiveRecord::Migration
  def self.up
    add_column(:parishes, :pastor_id, :integer)
    remove_column(:parishes,:pastor_name)
  end

  def self.down
  end
end
