class RemoveInChargeFromWorkshop < ActiveRecord::Migration
  def self.up
    remove_column :workshops, :in_charge
  end

  def self.down
    add_column :workshops, :in_charge, :integer
  end
end
