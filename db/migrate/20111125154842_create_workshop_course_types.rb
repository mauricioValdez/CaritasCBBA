class CreateWorkshopCourseTypes < ActiveRecord::Migration
  def self.up
    create_table :workshop_course_types do |t|
      t.integer :id_course_type
      t.integer :id_workshop

      t.timestamps
    end
  end

  def self.down
    drop_table :workshop_course_types
  end
end
