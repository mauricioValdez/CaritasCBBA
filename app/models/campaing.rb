class Campaing < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_many :donations
  has_many :campaing_photos
  accepts_nested_attributes_for :campaing_photos, :allow_destroy => true
  #put active record callbacks here

  #put validates here
  validates_presence_of :name
  validates_presence_of :location
 
  validates_presence_of :responsible
  
  validates_length_of :name, :within => 0..100
  validates_length_of :location, :within => 0..80
  validates_length_of :responsible, :within => 0..80
  #validates_format_of :responsible, :with => /^([a-zA-Z\ \-]{3,100})$/i

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  def self.find_last_five
    last = find(:all,:order => "date_ini")
    last.sort{|a,b| b.date_ini <=> a.date_ini}.slice(0..3)
  end
  
  def self.find_last_six
    find(:all,:order => "date_ini", :limit=>6,:conditions => ['id IN (Select campaing_id As id From campaing_photos)'])

  end
  def self.getRandomPicture (id)
    @photos=CampaingPhoto.find(:all,:order => "id",:conditions => ['campaing_id = ?',id])
    @photos[rand(@photos.count)]
  end
  
  #put object methods here
end
