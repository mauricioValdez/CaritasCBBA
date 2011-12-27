class AddVolunteerIdToGroup < ActiveRecord::Migration
  def self.up
    add_column :groups, :volunteer_id, :integer
  end

  def self.down
    remove_column :groups, :volunteer_id
  end
end
