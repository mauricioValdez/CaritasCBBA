class ChangeDescriptionFromCoursesTypes < ActiveRecord::Migration
  def self.up
    change_column :courses_types, :description, :text
  end

  def self.down
    change_column :courses_types, :description, :string
  end
end
