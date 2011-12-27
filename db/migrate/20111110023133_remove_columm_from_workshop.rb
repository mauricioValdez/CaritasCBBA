class RemoveColummFromWorkshop < ActiveRecord::Migration
  def self.up
    
    
     remove_column :workshops,  :pastor_or_administrator   
     remove_column :workshops, :phone
     remove_column :workshops, :responsible_for_training      
     remove_column  :workshops,:course1
     remove_column  :workshops,:course2
     remove_column  :workshops,:course3
     remove_column  :workshops,:course4
     remove_column  :workshops,:course5
     remove_column  :workshops,:course6
     remove_column :workshops, :follow_up
     remove_column :workshops, :observation
 
    
    
  end

  def self.down
    add_column :workshops,  :pastor_or_administrator, :string   
     add_column :workshops, :phone, :string 
     add_column :workshops, :responsible_for_training , :string      
     add_column  :workshops,:course1, :boolean
     add_column :workshops,:course2, :boolean
     add_column  :workshops,:course3, :boolean
     add_column  :workshops,:course4, :boolean
     add_column  :workshops,:course5, :boolean
     add_column  :workshops,:course6, :boolean
     add_column :workshops, :follow_up, :string 
     add_column :workshops, :observation, :string 
  end
end
