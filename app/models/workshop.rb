class Workshop < ActiveRecord::Base
  belongs_to :parish 
  #has_and_belongs_to_many :course
  has_many :progress
  has_many :courses, :through => :progresses
  
  #validates_presence_of :parish_id 
  #validates_presence_of :in_charge
  #validates_presence_of :course
  
  #validates_length_of :in_charge, :within => 0..80
  #validates_length_of :observations, :within => 0..100
  #validates_format_of :in_charge, :with => /^([a-zA-Z\ \-]{3,100})$/i
  
  
  def self.search(search)
    
   if search
      find(:all, :conditions => ['LOWER(parish) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  def self.searchByParish(parish)
      find(:all, :conditions => ['parish_id = ?', "#{parish}"])
  end

end
