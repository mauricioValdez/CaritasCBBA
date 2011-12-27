class CreateHistoryCourses < ActiveRecord::Migration
  def self.up
    create_table :history_courses do |t|
      t.integer :idGroup
      t.integer :idParish
      t.string :instructor
      t.date :dateCourse
      t.integer :idCourse

      t.timestamps
    end
  end

  def self.down
    drop_table :history_courses
  end
end
