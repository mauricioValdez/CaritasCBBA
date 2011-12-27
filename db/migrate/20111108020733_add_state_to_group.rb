class AddStateToGroup < ActiveRecord::Migration
  def self.up
        add_column :groups, :state, :boolean
  end

  def self.down
        remove_column :groups, :state
  end
end
