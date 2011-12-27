class RemoveSocialWorkNameFromSocialWorks < ActiveRecord::Migration
  def self.up
    remove_column :social_works, :social_work_name
  end

  def self.down
    add_column :social_works, :social_work_name, :string
  end
end
