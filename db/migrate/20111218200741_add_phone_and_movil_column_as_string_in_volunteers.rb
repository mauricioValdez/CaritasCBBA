class AddPhoneAndMovilColumnAsStringInVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :phone_number, :string
    add_column :volunteers, :movil, :string
  end

  def self.down
    remove_column :volunteers, :phone_number
    remove_column :volunteers, :movil
  end

end
