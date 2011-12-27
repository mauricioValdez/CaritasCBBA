class CreateSocialCards < ActiveRecord::Migration
  def self.up
    create_table :social_cards do |t|
      t.date :date
      t.string :parish_church
      t.string :name
      t.string :marital_status
      t.string :gender
      t.date :birthday
      t.string :birthday_location
      t.integer :identity_card
      t.integer :phone
      t.integer :movil
      t.string :address
      t.string :location_reference
      t.string :grade_school
      t.string :occupation
      t.string :family_members
      t.string :parish_belongs
      t.text :family_history
      t.string :derivative_by
      t.string :reference_person
      t.string :address_reference
      t.integer :phone_reference
      t.integer :movil_reference
      t.integer :age_reference
      t.string :occupation_reference
      t.string :type_of_case
      t.text :did_you_get_another_help
      t.timestamps
    end
  end

  def self.down
    drop_table :social_cards
  end
end
