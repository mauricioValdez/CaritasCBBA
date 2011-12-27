class IngresarDatosCursosTalleres < ActiveRecord::Migration
def self.up  
    execute "insert into workshops_courses(id,workshop_id,course_id) values(0,1,1);"
    execute "insert into workshops_courses(id,workshop_id,course_id) values(1,1,2);"
    execute "insert into workshops_courses(id,workshop_id,course_id) values(2,1,3);"
  end

  def self.down    
    execute "truncate table workshops_courses"   
  end
end
