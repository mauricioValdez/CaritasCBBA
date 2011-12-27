class CreateSocialWorkPhotos < ActiveRecord::Migration
  def self.up
    create_table :social_work_photos do |t|
      t.integer :social_work_id

      t.timestamps
    end
  end

  def self.down
    drop_table :social_work_photos
  end
end
