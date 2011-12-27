class AdicionarEstadoBooleanoVoluntarios < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :state, :boolean
  end

  def self.down
    remove_column :volunteers, :state
  end
end
