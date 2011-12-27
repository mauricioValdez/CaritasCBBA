class Vicariou < ActiveRecord::Base
  has_one :pastor
  belongs_to :parish
  
  validates_presence_of :name_vicariou
  validates_presence_of :ubication
  validates_presence_of :telephone
  validates_presence_of :pastor_id
  
  validates_length_of :name_vicariou, :maximum => 50
  validates_length_of :ubication, :maximum => 255
  validates_length_of :transport, :maximum => 255
  validates_length_of :telephone, :maximum => 50
  
  validates_uniqueness_of :name_vicariou, :message => "La vicaria ya existe"
  
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name_vicariou) LIKE ? OR LOWER(ubication) LIKE ? OR LOWER(transport) LIKE ?', "%#{search.downcase}%","%#{search.downcase}%","%#{search.downcase}%"])
    else
      find(:all)
    end
  end

end
