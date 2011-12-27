class CreateCoursesTypes < ActiveRecord::Migration
  def self.up
    create_table :courses_types do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :courses_types
  end
end
