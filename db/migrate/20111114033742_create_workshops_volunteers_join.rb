class CreateWorkshopsVolunteersJoin < ActiveRecord::Migration
  def self.up
    create_table 'workshops_volunteers', id => false do |t|
      t.column 'workshop_id', :integer
      t.column 'volunteer_id', :integer
    end
  end

  def self.down
    drop_table 'workshops_volunteers'
  end
end
