class CreateHelps < ActiveRecord::Migration
  def self.up
    create_table :helps do |t|
      t.text :what_is_persons_problem
      t.string :type_of_help
      t.string :was_derive_to_some_institution
      t.date :date_of_help
      t.text :detail
      t.text :observation
      t.timestamps
    end
  end

  def self.down
    drop_table :helps
  end
end
