class AddStateToSocialWorks < ActiveRecord::Migration
  def self.up
    add_column :social_works, :state, :boolean, :default => true
  end

  def self.down
    remove_column :social_works, :state
  end
end
