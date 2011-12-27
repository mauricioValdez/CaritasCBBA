class TruncateVolunteers < ActiveRecord::Migration
  def self.up
    execute "truncate table volunteers"
  end

  def self.down
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('alejandro','maldonado','gongora','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('maria','caceres','gongora','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('raul','Amurrio','gongora','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('mauricio','riguerea','leon','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"
    execute "insert into volunteers(name,last_name,second_last_name,profession,phone_number,movil,date_of_birth,genre,position,group_id,email,state) values('valeria','mejia','fernandez','doctor',2321332,232231,'2011-10-24','masculino','voluntario',1,'',true);"    
  end
end
