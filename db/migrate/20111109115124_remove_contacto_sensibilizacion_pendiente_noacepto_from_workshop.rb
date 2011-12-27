class RemoveContactoSensibilizacionPendienteNoaceptoFromWorkshop < ActiveRecord::Migration
  def self.up
    remove_column :workshops, :touch
    remove_column :workshops, :sensitization
    remove_column :workshops, :outstanding
    remove_column :workshops, :not_accept
    
  end

  def self.down
    add_column :workshops, :touch, :string
    add_column :workshops, :sensitization, :boolean
    add_column :workshops, :outstanding, :string
    add_column :workshops, :not_accept, :boolean
  end
end
