class SocialCard < ActiveRecord::Base
   belongs_to :parish
 

  validates_uniqueness_of :name
  validates_presence_of :name
  validates_length_of :name, :maximum => 150 
  validates_presence_of :address
  validates_length_of :address, :maximum => 150 
  validates_presence_of :gender

  
  validates_numericality_of :identity_card,:allow_blank => true
  validates_length_of :phone, :maximum => 50
  validates_length_of :movil, :maximum => 50
  validates_presence_of :occupation
  validates_length_of :occupation, :maximum => 50
  
  validates_presence_of :family_members
  validates_length_of :family_members, :maximum => 150 
   
  
  validates_presence_of :reference_person
  validates_length_of :reference_person, :maximum => 150 
  validates_presence_of :address_reference
  validates_length_of :address_reference, :maximum => 150 
   
  validates_length_of :phone_reference, :maximum => 50 
  validates_length_of :movil_reference, :maximum => 50 
  validates_presence_of :occupation_reference
  validates_length_of :occupation_reference, :maximum => 50 
  
  
  file_column :social_card_photo
  
  validates_file_format_of :social_card_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :social_card_photo, :in => 1.kilobytes..3000.kilobytes
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  
end
