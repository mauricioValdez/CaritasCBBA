class CreateAssistanceLists < ActiveRecord::Migration
  def self.up
    create_table :assistance_lists do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :assistance_lists
  end
end
