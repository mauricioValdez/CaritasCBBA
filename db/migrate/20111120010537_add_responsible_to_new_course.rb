class AddResponsibleToNewCourse < ActiveRecord::Migration
  def self.up
    add_column :courses, :responsible, :string
  end

  def self.down
    remove_column :courses, :responsible
  end
end
