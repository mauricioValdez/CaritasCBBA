xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8" 
xml.Workbook({
  'xmlns'      => "urn:schemas-microsoft-com:office:spreadsheet", 
  'xmlns:o'    => "urn:schemas-microsoft-com:office:office",
  'xmlns:x'    => "urn:schemas-microsoft-com:office:excel",    
  'xmlns:html' => "http://www.w3.org/TR/REC-html40",
  'xmlns:ss'   => "urn:schemas-microsoft-com:office:spreadsheet" 
  }) do

  xml.Worksheet 'ss:Name' => 'Parroquias' do
    xml.Table do
      # Header
      
      xml.Row do
        xml.Cell {xml.Data 'Reporte de parroquias ordenadas por vicaria', 'ss:Type' => 'String'}  
      end
  xml.Row do        
      end 
      xml.Row do        
      end       
      xml.Row do
        xml.Cell { xml.Data 'Parroco', 'ss:Type' => 'String' }            
        xml.Cell { xml.Data 'Parroquia', 'ss:Type' => 'String'}         
        xml.Cell { xml.Data 'Telefono', 'ss:Type' => 'String' }                
        xml.Cell { xml.Data 'Telefono de contacto', 'ss:Type' => 'String' } 
      end
      
      
         
   for vicariou in Vicariou.find(:all ,:order => :name_vicariou)
      
      for parish in Parish.all(:all,:conditions=>['vicariou_id=?', "#{vicariou.id}"],:order => :parish_name)               
        xml.Row do          
          xml.Cell { xml.Data Pastor.find(parish.pastor_id).name + " "+Pastor.find(parish.pastor_id).primary_last_name, 'ss:Type' => 'String' }
          xml.Cell { xml.Data parish.parish_name, 'ss:Type' => 'String' }                    
          xml.Cell { xml.Data parish.telephone, 'ss:Type' => 'String' }                    
          xml.Cell { xml.Data parish.contact_telephone, 'ss:Type' => 'String' }                                         
        end
      end 
   end
    end
  end
end
