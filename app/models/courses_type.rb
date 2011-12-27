class CoursesType < ActiveRecord::Base
  file_column :course_file
  validates_filesize_of :course_file, :in => 1.kilobytes..10000.kilobytes, :message => "no puede ser m'as grande de 10 MB"

  
  validates_presence_of :name
  validates_presence_of :description 
  
  validates_length_of :name, :within => 0..150
  #validates_length_of :description, :within => 0..255
  
  
  
  #has_many :courses
  def self.findf(course)
      find(:all,:conditions => ['id = ?', "#{course}"])
  end
  
  def self.search(search)
    if search
      find(:all, :conditions => ['LOWER(name) LIKE ?', "%#{search.downcase}%"])
    else
      find(:all)
    end
  end
   
end
