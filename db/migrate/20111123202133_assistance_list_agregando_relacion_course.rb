class AssistanceListAgregandoRelacionCourse < ActiveRecord::Migration
  def self.up
    add_column :assistance_lists, :course_id, :integer
  end

  def self.down
    remove_column :assistance_lists, :course_id
  end
end
