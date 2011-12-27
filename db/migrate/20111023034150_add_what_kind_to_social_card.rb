class AddWhatKindToSocialCard < ActiveRecord::Migration
  def self.up
     add_column :social_cards, :what_kind, :string
  end

  def self.down
    remove_column :social_cards, :what_kind
  end
end
