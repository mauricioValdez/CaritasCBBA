class CreateWorkshops < ActiveRecord::Migration
  def self.up
    create_table :workshops do |t|
      t.string :pastor_or_administrator
      t.string :parish
      t.string :phone
      t.string :responsible_for_training
      t.string :touch
      t.boolean :sensitization
      t.boolean :course1
      t.boolean :course2
      t.boolean :course3
      t.boolean :course4
      t.boolean :course5
      t.boolean :course6
      t.string :follow_up
      t.string :observation
      t.string :outstanding
      t.boolean :not_accept

      t.timestamps
    end
  end

  def self.down
    drop_table :workshops
  end
end
