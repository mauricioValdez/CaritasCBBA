class RemoveStateFromCampaing < ActiveRecord::Migration
  def self.up
     remove_column :campaings, :state
  end

  def self.down
    add_column :campaings, :state, :string
  end
end
