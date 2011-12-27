class AddSocialCardIdToHelp < ActiveRecord::Migration
  def self.up
    add_column :helps, :social_card_id, :integer
  end

  def self.down
    remove_column :helps, :social_card_id
  end
end