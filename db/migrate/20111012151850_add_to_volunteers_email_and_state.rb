class AddToVolunteersEmailAndState < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :email, :string
    add_column :volunteers, :state, :string
  end

  def self.down
    remove_column :volunteers, :email
    remove_column :volunteers, :state
  end
end
