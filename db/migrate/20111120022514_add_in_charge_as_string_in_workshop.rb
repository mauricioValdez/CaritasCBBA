class AddInChargeAsStringInWorkshop < ActiveRecord::Migration
  def self.up
    add_column :workshops, :in_charge, :string
  end

  def self.down
    remove_column :workshops, :in_charge
  end
end
