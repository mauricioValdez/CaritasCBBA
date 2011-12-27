class AddNameToSocialWorks < ActiveRecord::Migration
  def self.up
    add_column :social_works, :name, :string
  end

  def self.down
    remove_column :social_works, :name
  end
end
