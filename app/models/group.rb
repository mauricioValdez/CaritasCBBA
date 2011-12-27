class Group < ActiveRecord::Base

  #put constants here

  #put relations and references here
  belongs_to :volunteer # relacion para group_leader
  has_many :volunteers
  has_one :parish
  
  #put active record callbacks here
  file_column :group_photo
  
  #put validates here
  validates_presence_of :name  
  validates_presence_of :parish_id
  
  validates_length_of :name, :maximum => 50

  validates_file_format_of :group_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :group_photo, :in => 1.kilobytes..3000.kilobytes

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%s#{earch.downcase}%"])
    else
      find(:all)
    end
  end

  #put object methods here
  def to_s
    "#{name}"
  end
  
  def before_update
    if volunteer.nil?
      self.volunteer_id = '0'
    else
      volunteer.update_attributes(:position => 'responsable', :group_id => self.id)
    end
  end
end
