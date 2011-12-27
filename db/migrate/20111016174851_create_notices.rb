class CreateNotices < ActiveRecord::Migration
  def self.up
    create_table :notices do |t|
      t.string :title
      t.text :description
      t.string :notice_type
      t.boolean :is_published
      t.date :last_date

      t.timestamps
    end
  end

  def self.down
    drop_table :notices
  end
end
