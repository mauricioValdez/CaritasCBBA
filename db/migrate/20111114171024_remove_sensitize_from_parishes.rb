class RemoveSensitizeFromParishes < ActiveRecord::Migration
  def self.up
    remove_column :parishes, :sensitize
  end

  def self.down
    add_column :parishes, :sensitize, :boolean
  end
end
