class AddPhotoToParish < ActiveRecord::Migration
  def self.up
     add_column :parishes, :parish_photo, :string
  end

  def self.down
    remove_column :parishes, :parish_photo
  end
end
