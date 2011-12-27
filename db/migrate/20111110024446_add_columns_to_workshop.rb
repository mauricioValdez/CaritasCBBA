class AddColumnsToWorkshop < ActiveRecord::Migration
  def self.up
    
    add_column :workshops, :in_charge, :string
    add_column :workshops, :course, :string
    add_column :workshops, :observations, :text
    
  end

  def self.down
    remove_column :workshops, :in_charge
    remove_column :workshops, :course
    remove_column :workshops, :observations
  end
end
