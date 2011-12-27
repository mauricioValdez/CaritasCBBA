class Insert < ActiveRecord::Migration
  def self.up
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Capinota','dato no suministrado','dato no suministrado',00000000,42,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Valle Alto','dato no suministrado','dato no suministrado',00000000,53,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Centro','dato no suministrado','dato no suministrado',00000000,2,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Norte','dato no suministrado','dato no suministrado',00000000,9,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Noreste','dato no suministrado','dato no suministrado',00000000,15,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Noroeste','dato no suministrado','dato no suministrado',00000000,16,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sud Centro','dato no suministrado','dato no suministrado',00000000,21,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sur Este','dato no suministrado','dato no suministrado',00000000,27,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sur Oeste','dato no suministrado','dato no suministrado',00000000,32,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Ayopaya','dato no suministrado','dato no suministrado',00000000,36,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Chapare','dato no suministrado','dato no suministrado',00000000,66,true);"
    
  end

  def self.down
        execute "truncate table vicarious"
  end
end
