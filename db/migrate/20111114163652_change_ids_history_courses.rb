class ChangeIdsHistoryCourses < ActiveRecord::Migration
  def self.up
    remove_column :history_courses, :idParish
    remove_column :history_courses, :idGroup
    add_column :history_courses, :idParish, :string
    add_column :history_courses, :idGroup, :string
    
  end

  def self.down
    
    remove_column :history_courses, :idParish
    remove_column :history_courses, :idGroup
  end
end
