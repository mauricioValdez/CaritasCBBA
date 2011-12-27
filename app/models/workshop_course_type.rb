class WorkshopCourseType < ActiveRecord::Base
  validates_uniqueness_of :id_course_type, :scope => [:id_workshop]
  
  def to_s
    "#{CoursesType.findf(id_course_type)[0].name}"
  end
  def self.searchByWork(work)
      find(:all, :conditions => ['id_workshop = ? ', "#{work}"])
  end
end
