class DeleteResponsibleFromNewCourse < ActiveRecord::Migration
  def self.up
    remove_column :courses, :responsible
  end

  def self.down
     add_column :courses, :responsible, :string
  end
end
