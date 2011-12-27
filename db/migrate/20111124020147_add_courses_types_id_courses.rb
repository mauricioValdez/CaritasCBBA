class AddCoursesTypesIdCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :courses_types_id, :integer
  end

  def self.down
    remove_column :courses, :courses_types_id
  end
end
