class PastorDateOfBirth < ActiveRecord::Migration
   def self.up
    add_column :pastors, :date_of_birth, :date
  end

  def self.down
    remove_column :pastors, :date_of_birth
  end
end
