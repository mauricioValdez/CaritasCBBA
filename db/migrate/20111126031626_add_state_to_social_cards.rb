class AddStateToSocialCards < ActiveRecord::Migration
  def self.up
    add_column :social_cards, :state, :boolean, :default => true
  end

  def self.down
    remove_column :social_cards, :state
  end
end
