class InsertandoLasUltimasVicarias < ActiveRecord::Migration
  def self.up
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Foranea Sacaba','dato no suministrado','dato no suministrado',00000000,70,true);"
    execute "insert into vicarious(name_vicariou,ubication,transport,telephone,pastor_id,state) values('Valle Bajo','dato no suministrado','dato no suministrado',00000000,71,true);"
  end

  def self.down
  end
end
