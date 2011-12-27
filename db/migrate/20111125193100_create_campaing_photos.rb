class CreateCampaingPhotos < ActiveRecord::Migration
  def self.up
    create_table :campaing_photos do |t|
      t.integer :campaing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :campaing_photos
  end
end
