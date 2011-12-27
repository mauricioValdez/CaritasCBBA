class IngresarAdministrador < ActiveRecord::Migration
def self.up  
    execute "insert into users(username,email,crypted_password,password_salt,persistence_token) values('Admin','Admin@hotmail.com','73cbfc0e4d95542a6f6dfef20a864db1651cdb3a03e7d5cc181d9cdc77eab434cb485ee5b1a29af8dff5639c535d0f8f4500dddc99afb0f7b95359816590da6a','H3vB7Z3yvJKEB97Rj4x','8e68e91c7d3daa190f27e6a51022a8bcfdc725c1caa5787abe526aebd7bd35f81fdbf3f6d18c1f066379603f620cc36fefea9a242ba4d9fd386a555e4d1249ba');"
  end

  def self.down    
    execute "truncate table users"   
  end
end