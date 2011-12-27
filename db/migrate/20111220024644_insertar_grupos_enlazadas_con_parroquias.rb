class InsertarGruposEnlazadasConParroquias < ActiveRecord::Migration

  def self.up
#vicaria centro
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Madre de la Divina Provinencia (Hospicio)',1,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santo Domingo',2,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Ignacio de Loyola (Compañia de Jesus)',3,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Jose (San Juan de Dios)',4,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Pedro',5,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Virgen del Carmen',6,true,0);"
    #vicaria Norte
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Madre del Verbo Divino',7,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de Guadalupe',8,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de Anunciacion',9,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santa Monica',10,true,0);"
    #vicaria Nor Este
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Virgen del Carmen y San Maximiliano Kolbe (Quintanilla)',11,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestro Señor de Exaltacion (Recoleta)',12,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santa Ana (Cala Cala)',13,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Divino Maestro',14,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de las Gracias y Beato Edmundo Boyanowski',15,true,0);"
    #vicaria Nor Oeste
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Cristo Rey',16,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de La Merced',17,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de La Paz',18,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Parroquia San Gerardo',19,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Inmaculado Corazon de Maria (Corazonistas)',20,true,0);"
    #vicaria Sur Centro
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Antonio de Padua',21,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Carlos Borromeo',22,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Joaquin',23,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Juan Bautista (Alalay)',24,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Rafael',25,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Pio X',26,true,0);"
    #vicaria Sur Este
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Virgen de Fatima',27,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de La Salette',28,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Eugenio de Mazenod',29,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santa Vera Cruz',30,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Maria del Camino',31,true,0);"
    #vicaria Sur Oeste
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Maria Auxiliadora',32,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Cuasi Parroquia Virgen del Socavon',33,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Cuasi Parroquia Don Bosco',34,true,0);"
    #vicaria Ayopaya
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora del Rosario (Cocapata)',35,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Francisco de Asis (Independencia)',36,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Jose Obrero (Kami)',37,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Bartolome (Morochata)',38,true,0);"
    #vicaria Capinota
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Augustin (Tapacari)',39,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Antonio de Padua (Arque)',40,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Juan Bautista (Tacopaya)',41,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Pablo Apostol (Capinota)',42,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Juan Bautista (Itapaya)',43,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Jesus de Challa (Aramasi)',44,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Cristo de Ramadas (Ramadas)',45,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Bartolome (Bolivar)',46,true,0);"
    #vicaria Valle Alto
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Apostol Santiago (Anzaldo)',47,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Sra. Maria y SAP (Tolata)',48,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora de las Nieves (Santivañez)',49,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora del Carmen (Cliza)',50,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Antonio de Padua',51,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Bartolome (Arani)',52,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Benito (V. de Mendoza)',53,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Juan Bautista (Punata)',54,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Pedro (Tarata)',55,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santa Barbara (Vacas)',56,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Miguel (Toco)',57,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Isidoro (Villa Rivero)',58,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Nuestra Señora del Rosario (Vinto)',59,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Ildefonso y Santuario Nuestra Señora de Urkupiña',60,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Lorenzo (Colcapirhua)',61,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Miguel (Tiquipaya)',62,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santiago (El Paso)',63,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santisima Trinidad (Quillacollo)',64,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Juan Baptista (Itapaya)',65,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Pedro (Sipe Sipe)',66,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Cruz Gloriosa',67,true,0);"
    #vicaria Sacaba
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Pedro (Sacaba)',68,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Isidro (Colomi)',69,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Virgen de los Angeles (Melga)',70,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Virgen de Guadalupe (Huayllani)',71,true,0);"
    #vicaria Chapare
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Exaltacion (Chipiriri)',72,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('San Antonio de Padua (Villa Tunari)',73,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Santisima Trinidad (Isiboro)',74,true,0);"
    execute "insert into groups(name,parish_id,state,volunteer_id) values('Virgen del Rosario (Eterazama)',75,true,0);"

  end

  def self.down
  end
end
