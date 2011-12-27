class CreateProgresses < ActiveRecord::Migration
  def self.up
    create_table :progresses do |t|
      t.integer :workshop_id
      t.integer :course_id

      t.timestamps
    end
  end

  def self.down
    drop_table :progresses
  end
end
