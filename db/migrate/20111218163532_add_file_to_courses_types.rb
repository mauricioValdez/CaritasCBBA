class AddFileToCoursesTypes < ActiveRecord::Migration
  def self.up
    add_column :courses_types, :course_file, :string
  end

  def self.down
    remove_column :courses_types, :course_file
  end
end
