class AddNewStatePastors < ActiveRecord::Migration
  def self.up
    add_column :pastors, :state, :boolean
  end

  def self.down
    remove_column :pastors, :state
  end
end
