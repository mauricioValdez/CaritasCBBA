class RemovePhneNumberAndMovilColumnFromVolunteer < ActiveRecord::Migration
  def self.up
    remove_column :volunteers, :phone_number
    remove_column :volunteers, :movil
  end

  def self.down
    add_column :volunteers, :phone_number, :integer
    add_column :volunteers, :movil, :integer

  end
end
