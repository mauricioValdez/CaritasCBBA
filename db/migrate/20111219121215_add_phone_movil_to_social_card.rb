class AddPhoneMovilToSocialCard < ActiveRecord::Migration
  def self.up
     add_column :social_cards, :phone,:string
    add_column :social_cards, :movil, :string
    add_column :social_cards, :phone_reference, :string
    add_column :social_cards, :movil_reference, :string
  end

  def self.down
    remove_column :social_cards, :phone
    remove_column :social_cards, :movil
    remove_column :social_cards, :phone_reference
    remove_column :social_cards, :movil_reference
  end
end
