xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Recent Courses' do
    xml.Table do
      # Header
      
      xml.Row do
        xml.Cell {xml.Data 'Reporte Cursos', 'ss:Type' => 'String'}
      end
      
  xml.Row do        
      end 
      xml.Row do        
      end 
         
      for courses in @courses_report
      # Rows
      xml.Row do
        xml.Cell { xml.Data courses.name, 'ss:Type' => 'String' }
        xml.Cell { xml.Data courses.date_ini, 'ss:Type' => 'String' }
      end
      xml.Row do        
      end 
             xml.Row do
               
        xml.Cell { xml.Data 'Nombre', 'ss:Type' => 'String' }            
        xml.Cell { xml.Data 'Parroquia', 'ss:Type' => 'String'}         
        xml.Cell { xml.Data 'Correo electronico', 'ss:Type' => 'String' }                
        xml.Cell { xml.Data 'Telefono', 'ss:Type' => 'String' }               
        xml.Cell { xml.Data 'Celular', 'ss:Type' => 'String' }               
        xml.Cell { xml.Data 'Firma', 'ss:Type' => 'String' }
      end
      
      for listVolunteers in AssistanceList.all(:all,:conditions=>['course_id=?', "#{courses.id}"])               
        
          volunteer = Volunteer.find(listVolunteers.volunteer_id)               
        xml.Row do                    
          xml.Cell { xml.Data volunteer.name+" "+volunteer.last_name+" "+volunteer.second_last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data Parish.find(Group.find(volunteer.group_id).parish_id).parish_name, 'ss:Type' => 'String' }                    
          xml.Cell { xml.Data volunteer.email, 'ss:Type' => 'String' }                    
          xml.Cell { xml.Data volunteer.phone_number, 'ss:Type' => 'String' }   
          xml.Cell { xml.Data volunteer.movil, 'ss:Type' => 'String' }  
          xml.Cell { xml.Data '', 'ss:Type' => 'String' }   
        end
      end
      xml.Row do         
      end 
         xml.Row do        
      end 
   end
    end
  end
end
