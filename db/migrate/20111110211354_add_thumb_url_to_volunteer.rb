class AddThumbUrlToVolunteer < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :thumb_url, :string
  end

  def self.down
    remove_column :volunteers, :thumb_url
  end
end
