class AddColumnsParishContactAndPhone < ActiveRecord::Migration
  def self.up
    add_column :parishes, :contact, :string
    add_column :parishes, :contact_telephone, :string
  end

  def self.down
    remove_column :parishes, :contact
    remove_column :parishes, :contact_telephone
  end
end
