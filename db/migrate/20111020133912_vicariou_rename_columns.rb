class VicariouRenameColumns < ActiveRecord::Migration
  def self.up
    rename_column :vicarious, :vicarName, :vicar_name
    rename_column :vicarious, :nameVicariou, :name_vicariou
    add_column(:vicarious, :pastor_id, :integer)
    remove_column(:vicarious,:vicar_name)
  end
  def self.down
  
  end
end
