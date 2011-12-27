class AgregandoCursosDeFormacionDatosReales < ActiveRecord::Migration
  def self.up  
    execute "insert into courses_types(name,description) values('La pobreza y sus causas','Objetivos:\nAcercarnos a la realidad de la pobreza y exclusion social que existe en nuestro contexto local y parroquial.\nPromover las reflexion de situacion de marginacion que vivien los sectores vulnerables.\nDar a conocer la accion caritativa de la iglesia.\nAnimar al compromiso personal y comunitario ante la situacion analizada.');"
    execute "insert into courses_types(name,description) values('Dimension de la caridad en la comunidad eclesial','Objetivos:\nDescubrir en la mision de caritas su caracter evangelizador.\nProfundizar en la dimension eclesial de la caridad.');"
    execute "insert into courses_types(name,description) values('Pastoral social caritas','Objetivos:\nComprender e interiorizar el concepto de caritas animadora de la vivencia de la caridad y la solidaridad.\nEstablecer medios y estrategias para realizar el compartir cristiano de los bienes de la comunidad.\nIdentificar estrategias para construir y/o fortalecer la comunidad parroquial.');"
    execute "insert into courses_types(name,description) values('Identidad, mision y organizacion','Objetivos:\nEstablecer la identidad y mision de la pastoral caritas parroquial.\nDar pautas para fortalecer la organizacion del equipo de trabajo.\nOfrecer herramientas para definir que hacer de la pastoral caritas parroquiales.');"
    execute "insert into courses_types(name,description) values('Medios y ambitos para desarrollar la animacion comunitaria de la caridad','Objetivos:\nDescubrir en el perfil del agente de pastoral social caritas.\nProfundizar en el sentido del liderazgo y del trabajo en equipo.\nOfrecer herramientas para la animacion comunitaria de la caridad.');"
    execute "insert into courses_types(name,description) values('Educacion para la solidaridad','Objetivos:\nIdentificar el concepto de solidaridad.\nEstablecer caminos para poder llevar a acabo un proceso de educacion y promocion de la solidaridad en la comunidad parroquial.\nPresentar una propuesta de campañas de la solidaridad.');"    
  end
  def self.down
    execute "truncate table courses_types"   
  end
end