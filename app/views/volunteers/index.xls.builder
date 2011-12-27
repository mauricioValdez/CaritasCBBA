xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Recent Volunteers' do
    xml.Table do
      # Header
      
      xml.Row do
        xml.Cell {xml.Data 'Reporte de Voluntarios', 'ss:Type' => 'String'}
      end
      
      xml.Row do
        xml.Cell { xml.Data 'Nombre', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Apellido Parterno', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Apellido Materno', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Parroquia', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Vicaria', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Profesion', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Telefono', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Celular', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Cumpleaños', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Sexo', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'E-mail', 'ss:Type' => 'String' }
        xml.Cell { xml.Data 'Grupos', 'ss:Type' => 'String' }
        

        
      end

      # Rows
      for volunteer in @volunteers
        xml.Row do
          xml.Cell { xml.Data volunteer.name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.second_last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data Parish.find(volunteer.group.parish_id).parish_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data Vicariou.find(Parish.find(volunteer.group.parish_id).vicariou_id).name_vicariou, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.profession, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.phone_number, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.movil, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.date_of_birth, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.genre, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.email, 'ss:Type' => 'String' }
          xml.Cell { xml.Data volunteer.group.name, 'ss:Type' => 'String' }
         
        end
      end
    end
  end
end
