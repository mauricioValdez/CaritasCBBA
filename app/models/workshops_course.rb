class WorkshopsCourse < ActiveRecord::Base
  
  def self.searchByWorkshop(work)
      find(:all, :conditions => ['workshop_id = ?', "#{work}"])
  end
    def self.findByCourseWorshop(course,work)
      find(:all, :conditions => ['workshop_id = ? AND course_id= ?', "#{work}","#{course}"])
  end
  
end
