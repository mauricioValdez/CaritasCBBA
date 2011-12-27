class AddPhotoFieldsToNotices < ActiveRecord::Migration
  def self.up
        add_column :notices, :notice_photo, :string
  end

  def self.down
      remove_column :notices, :notice_photo
  end
end
