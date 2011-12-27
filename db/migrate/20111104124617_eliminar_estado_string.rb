class EliminarEstadoString < ActiveRecord::Migration
  def self.up
    remove_column :volunteers, :state
  end

  def self.down
    add_column :volunteers, :state, :string
  end
end
