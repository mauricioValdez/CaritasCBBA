class AddPhotoToGroup < ActiveRecord::Migration
  def self.up
    add_column :groups, :group_photo, :string
  end

  def self.down
    remove_column :groups, :group_photo
  end
end
