class AssistanceListAgregandoIdVolunteer < ActiveRecord::Migration
  def self.up
    add_column :assistance_lists, :volunteer_id, :integer
  end

  def self.down
    remove_column :assistance_lists, :volunteer_id
  end
end
