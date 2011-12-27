class RemoveColumnCourseFromWorkshop < ActiveRecord::Migration
  def self.up
     remove_column :workshops, :course
  end

  def self.down
    add_column :workshops, :course, :string
  end
end
