class AddIdParishToSocialCards < ActiveRecord::Migration
  def self.up
     remove_column :social_cards,:parish_church
     add_column :social_cards, :parish_id, :integer
  end

  def self.down
    add_column :social_cards, :parish_church, :string
    remove_column :social_cards, :parish_id
  end
end
