class Donation < ActiveRecord::Base
  #put constants here
  DONATION_UNITS = Array.[]("...","KG","Litro")

  #put relations and references here
  belongs_to :campaings
  
  #put active record callbacks here
  file_column :volunteer_photo
  #put validates here
  validates_presence_of :name
  validates_presence_of :amount
  #validates_format_of :name, :with => /^([a-zA-Z\ ]{3,50})$/i
  #put class methods here
  def self.search(search,campaing)
    if search       
          find(:all, :conditions => ['LOWER(name) LIKE ? OR LOWER(last_name) LIKE ? OR LOWER(second_last_name) LIKE ? OR LOWER(profession) LIKE ?', "%#{search.downcase}%",search.downcase,search.downcase,search.downcase])           
    else     
      if campaing
          find(:all, :conditions => ['campaing_id = ?', "#{campaing}"])   
        else 
        find(:all)  
      end
    end
         
  end
end
