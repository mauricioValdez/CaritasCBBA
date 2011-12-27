class Volunteer < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_one :group #relacion para group_leader
  belongs_to :group
  belongs_to :assistance_list
  
  #put active record callbacks here
  file_column :volunteer_photo
  #put validates here
  validates_presence_of :name
  validates_presence_of :last_name
  validates_presence_of :position  
  validates_presence_of :date_of_birth
  validates_presence_of :genre  
  
  validates_length_of :name, :within => 0..50
  validates_length_of :last_name, :within => 0..50
  validates_length_of :second_last_name, :within => 0..50
  validates_length_of :profession, :within => 0..50, :allow_blank => true 
  validates_length_of :phone_number, :within => 0..50, :allow_blank => true  
  validates_length_of :movil, :within => 0..50, :allow_blank => true  
  validates_length_of :position, :within => 0..50
  validates_length_of :email, :within => 0..150, :allow_blank => true 
  
  validates_file_format_of :volunteer_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :volunteer_photo, :in => 1.kilobytes..3000.kilobytes
  #put class methods here
  def self.search(search,group)
    if search       
          find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(last_name) LIKE ? OR LOWER(second_last_name) LIKE ? OR LOWER(profession) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%"])           
    else     
      if group
          find(:all, :conditions => ['group_id = ?', "#{group}"])   
        else 
        find(:all)  
      end
    end
         
  end
  
  #put object methods here
  def to_s
    "#{name} #{last_name} #{second_last_name}"
  end

end