class CambiarElTipoIntegerAStringParroco < ActiveRecord::Migration
  def self.up
    change_column :pastors, :phone_number, :string
    change_column :pastors, :cellphone_number, :string
  end

  def self.down
  end
end
