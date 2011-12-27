class AddPhotoToSocialCard < ActiveRecord::Migration
  def self.up
    add_column :social_cards, :social_card_photo, :string
  end

  def self.down
    remove_column :social_cards, :social_card_photo
  end
end
