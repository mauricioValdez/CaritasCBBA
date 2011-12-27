 class AddPhotoToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :volunteer_photo, :string
  end

  def self.down
     remove_column :volunteers, :volunteer_photo
  end
end
