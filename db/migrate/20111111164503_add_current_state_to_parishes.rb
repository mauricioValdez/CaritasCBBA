class AddCurrentStateToParishes < ActiveRecord::Migration
  def self.up
    add_column :parishes, :current_state, :string
  end

  def self.down
    remove_column :parishes, :current_state
  end
end
