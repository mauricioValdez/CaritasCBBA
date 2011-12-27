class Parish < ActiveRecord::Base
  PARISH_STATES = Array.[]("En Contacto","No Alcanzada", "Sensibilizada", "No Aceptada", "En Proceso", "Seguimiento")
  
  has_one :pastor
  has_one :vicariou
  belongs_to :group
  has_one :workshop
  has_many :social_cards
  file_column :parish_photo
  
  validates_presence_of :pastor_id
  validates_presence_of :vicariou_id
  validates_presence_of :parish_name  
  validates_presence_of :ubication
  validates_presence_of :telephone
  
  validates_length_of :parish_name, :maximum => 50
  validates_length_of :ubication, :maximum => 255
  validates_length_of :transport, :maximum => 255
  validates_length_of :telephone, :maximum => 50
  validates_length_of :contact_telephone, :maximum => 50, :allow_nil => true, :allow_blank => true
  
  

  #validates_numericality_of :telephone, :greater_than => 0, :if => "self.telephone.present?"
  validates_uniqueness_of :parish_name, :message => "La Parroquia ya existe!"
  
  validates_file_format_of :parish_photo, :in => ["gif", "jpg", "png"]
  validates_filesize_of :parish_photo, :in => 1.kilobytes..3000.kilobytes
  
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(parish_name) LIKE ? OR LOWER(ubication) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  def after_create
    self.workshop = Workshop.new
    self.save
  end
  
  def create_workshop
    self.workshop = Workshop.new
    self.save
  end

end
