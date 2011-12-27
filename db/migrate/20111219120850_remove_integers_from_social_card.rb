class RemoveIntegersFromSocialCard < ActiveRecord::Migration
  def self.up
    remove_column :social_cards, :phone
    remove_column :social_cards, :movil
    remove_column :social_cards, :phone_reference
    remove_column :social_cards, :movil_reference
  end

  def self.down
    add_column :social_cards, :phone, :integer
    add_column :social_cards, :movil, :integer
    add_column :social_cards, :phone_reference, :integer
    add_column :social_cards, :movil_reference, :integer
  end
end
