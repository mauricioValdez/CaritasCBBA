class CambiandoTipoDatosEnObraSocial < ActiveRecord::Migration
  def self.up
    change_column :social_works, :phone, :string
    change_column :social_works, :movil, :string
  end

  def self.down
  end
end
