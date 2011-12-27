class InsertPastors < ActiveRecord::Migration
  def self.up
        execute "insert into pastors(name,primary_last_name,second_last_name,date_of_birth,state) values('Winson','Rodriguez','Jimenez','10/10/2010',TRUE);"
        execute "insert into pastors(name,primary_last_name,second_last_name,date_of_birth,state) values('Ivan','Vargas',' ','10/10/2010',TRUE);"
        execute "insert into pastors(name,primary_last_name,second_last_name,date_of_birth,state) values('Alvaro','Inturias',' ','10/10/2010',TRUE);"
        execute "insert into pastors(name,primary_last_name,second_last_name,date_of_birth,state) values('Sin','Responsable',' ','10/10/2010',FALSE);"
  end

  def self.down
  end
end
