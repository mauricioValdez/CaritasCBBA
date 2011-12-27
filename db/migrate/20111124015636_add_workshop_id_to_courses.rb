class AddWorkshopIdToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :workshop_id, :integer
  end

  def self.down
    remove_column :courses, :workshop_id
  end
end
