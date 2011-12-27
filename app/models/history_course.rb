  class HistoryCourse < ActiveRecord::Base
  belongs_to :course
  validates_presence_of :idGroup , :message => " no puede ser vacio"
  #validates_format_of :idGroup, :with => /^([a-zA-Z ñÑ]{0,255})$/i , :message => " es demasiado grande o tiene caracteres invalidos"
  validates_presence_of :idParish , :message => " no puede ser vacio"
  #validates_format_of :idParish, :with => /^([a-zA-Z ñÑ]{0,255})$/i , :message => " es demasiado grande o tiene caracteres invalidos"
  validates_presence_of :idCourse , :message => " no puede ser vacio"
  #validates_format_of :idCourse,:with => /^([0-9]{0,3})$/i , :message => " solo acepta numeros"
  validates_presence_of :instructor , :message => " no puede ser vacio"
  #validates_format_of :instructor, :with => /^([a-zA-Z ñÑ]{0,255})$/i , :message => "El Campo de instructor solo acepta letras y espacios."

  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['idParish LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
  
  def self.find_last_five
    last = find(:all,:order => "created_at")
    last.sort{|a,b| b.created_at <=> a.created_at}.slice(0..4)
  end

  

end
