class Notice < ActiveRecord::Base
  #put constants here
  NOTICES_TYPES = Array.[]("Campañas","Dias Especiales", "Asambleas", "Otro")
  
  
  #put relations and references here
  file_column :notice_photo
  #put active record callbacks here
  
  #put validates here
  validates_presence_of :title
  validates_length_of :title, :maximum => 255, :too_long => "El titulo es demasiado largo"
  validates_file_format_of :notice_photo, :in => ["gif", "jpg", "png"]
  #imagen valida de 1 KB to 3 MB
  validates_filesize_of :notice_photo, :in => 1.kilobytes..3000.kilobytes, :message => "no puede ser m'as grande de 3 MB"
  
  #put class methods here
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(title) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
  
  def self.find_last_five
    last = find(:all,:order => "created_at")
    last.sort{|a,b| b.created_at <=> a.created_at}.slice(0..4)
  end

  #put object methods here
  def show_if(string)
    return "Sí" if string== true || string =~ (/(true|t|yes|y|1)$/i)
    return "No" if string== false || string.nil? || string =~ (/(false|f|no|n|0)$/i)
  end
end
