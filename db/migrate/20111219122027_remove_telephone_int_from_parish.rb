class RemoveTelephoneIntFromParish < ActiveRecord::Migration
  def self.up
    remove_column :parishes, :telephone    
  end

  def self.down
    add_column :parishes, :telephone, :integer
  end
end
