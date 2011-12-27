xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Recent Parishes' do
    xml.Table do
      # Header
      
      xml.Row do
        xml.Cell {xml.Data 'Reporte de Talleres y Cursos por Parroquia', 'ss:Type' => 'String'}
      end
      
   xml.Row do        
      end 
      xml.Row do        
      end 
   
    for parish in Parish.find(:all) do
      xml.Row do
        xml.Cell { xml.Data 'Parroquia:', 'ss:Type' => 'String' }  
        xml.Cell { xml.Data parish.parish_name, 'ss:Type' => 'String' }
      end
      xml.Row do        
      end 
      xml.Row do 
        xml.Cell { xml.Data 'Nombre Curso', 'ss:Type' => 'String' }     
        xml.Cell { xml.Data 'Descripcion', 'ss:Type' => 'String' }     
      end
     
      for courses_type in CoursesType.all(:select => "name,description",:conditions=> ["id in (select id_course_type from workshop_course_types where id_workshop in (select id from workshops where parish_id= ?))","#{parish.id}"])
        if courses_type.nil?
           xml.Row do  
            xml.Cell { xml.Data 'No Tiene Cursos', 'ss:Type' => 'String' }   
           end
        else
          xml.Row do          
            xml.Cell { xml.Data courses_type.name, 'ss:Type' => 'String' }   
            xml.Cell { xml.Data courses_type.description, 'ss:Type' => 'String' }
          end
        end 
      end
      xml.Row do        
      end 
    end
    end
  end
end
