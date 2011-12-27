class SocialWork < ActiveRecord::Base
  #put constants here

  #put relations and references here
  has_many :social_work_photos
  accepts_nested_attributes_for :social_work_photos, :allow_destroy => true
  #put active record callbacks here

  #put validates here
  validates_presence_of :parish
  validates_presence_of :name
  validates_presence_of :social_work
  validates_presence_of :responsible
  validates_presence_of :location  
  validates_presence_of :responsible_filling
  
  validates_length_of :parish, :maximum => 255
  validates_length_of :social_work, :maximum => 255
  validates_length_of :responsible, :maximum => 255
  validates_length_of :location, :maximum => 255
  validates_length_of :phone, :maximum => 50
  validates_length_of :movil, :maximum => 50
  validates_length_of :email, :maximum => 150
  validates_length_of :transport, :maximum => 255
  validates_length_of :responsible_filling, :maximum => 150
  validates_length_of :name, :maximum => 255
  
  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  def self.find_last_five
    last = find(:all,:order => "created_at")
    last.sort{|a,b| b.created_at <=> a.created_at}.slice(0..4)
  end  
  def self.find_last_six
    find(:all,:order => "created_at",:conditions => ['id IN (Select social_work_id As id From social_work_photos)'], :limit=>6)

  end

  def to_lable
    "#{self.name}"
  end
  
  def self.getRandomPicture (id)
    @photos=SocialWorkPhoto.find(:all,:order => "id",:conditions => ['social_work_id = ?',id])
    @photos[rand(@photos.count)]
  end
end
