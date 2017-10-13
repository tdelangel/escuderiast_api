# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

autos = [

{id_cliente:1,  placas: "AEMT221", notas:"Nota ejemplo", anio: 2017, id_cat_autos: 1, vin: "Identidad" },
{id_cliente:2,  placas: "AEMT222", notas:"Nota ejemplo", anio: 2018, id_cat_autos: 2, vin: "Identidad" },
{id_cliente:3,  placas: "AEMT223", notas:"Nota ejemplo", anio: 2016, id_cat_autos: 1, vin: "Salud" },
{id_cliente:4,  placas: "AEM5424", notas:"Nota ejemplo", anio: 2016, id_cat_autos: 3, vin: "Programas Sociales" },
{id_cliente:5,  placas: "AEM5425", notas:"Nota ejemplo", anio: 2015, id_cat_autos: 3, vin: "Trabajo" },
{id_cliente:6,  placas: "AEM5426", notas:"Nota ejemplo", anio: 2013, id_cat_autos: 1, vin: "Impuestos" },
{id_cliente:7,  placas: "AEM5427", notas:"Nota ejemplo", anio: 2013, id_cat_autos: 3, vin: "Migración, Visa y Pasaporte" },
{id_cliente:8,  placas: "AEM5428", notas:"Nota ejemplo", anio: 2011, id_cat_autos: 2, vin: "Economía" },
{id_cliente:9,  placas: "AEM2129", notas:"Nota ejemplo", anio: 2011, id_cat_autos: 2, vin: "Territorio y vivienda" },
{id_cliente:10, placas: "AEM2110", notas:"Nota ejemplo", anio: 2013, id_cat_autos: 6, vin: "Turismo" },
{id_cliente:11, placas: "AEM2111", notas:"Nota ejemplo", anio: 2014, id_cat_autos: 6, vin: "Medio Ambiente" },
{id_cliente:12, placas: "AEM2112", notas:"Nota ejemplo", anio: 2015, id_cat_autos: 6, vin: "Seguridad, legalidad y justicia" },
{id_cliente:13, placas: "AEM2113", notas:"Nota ejemplo", anio: 2017, id_cat_autos: 6, vin: "Servicios Financieros" },
{id_cliente:14, placas: "AEM2114", notas:"Nota ejemplo", anio: 2018, id_cat_autos: 6, vin: "Comunicaciones y transportes" },
{id_cliente:15, placas: "AEM2115", notas:"Nota ejemplo", anio: 2018, id_cat_autos: 7, vin: "Asociaciones y Organizaciones" },
{id_cliente:16, placas: "AEM2116", notas:"Nota ejemplo", anio: 2017, id_cat_autos: 2, vin: "Energía" },
{id_cliente:17, placas: "AEM2117", notas:"Nota ejemplo", anio: 2017, id_cat_autos: 2, vin: "Trabajo"}
]


cat_autos =[
{marca: "ABARTH",submarca: "500C"},
{marca: "ABARTH",submarca: "500"},
{marca: "ABARTH",submarca: "124 Spider"},
{marca: "ALFA ROMEO",submarca: "Giulietta"},
{marca: "ALFA ROMEO",submarca: "MiTo"},
{marca: "ALFA ROMEO",submarca: "4C"},
{marca: "ALFA ROMEO",submarca: "Giulia"},
{marca: "ALFA ROMEO",submarca: "Stelvio"},
{marca: "ALFA ROMEO (FIAT)",submarca:"4C"},
{marca: "ASTON MARTIN",submarca: "DB9"},
{marca: "ASTON MARTIN",submarca: "Vantage V8"},
{marca: "ASTON MARTIN",submarca: "Vanquish"},
{marca: "ASTON MARTIN",submarca: "Vantage V12"},
{marca: "ASTON MARTIN",submarca: "Rapide"},
{marca: "AUDI",submarca: "A4"},
{marca: "AUDI",submarca: "A8"},
{marca: "AUDI",submarca: "A3"},
{marca: "AUDI",submarca: "TT"},
{marca: "AUDI",submarca: "A5"},
{marca: "AUDI",submarca: "A4 Allroad Quattro"},
{marca: "AUDI",submarca: "A6"},
{marca: "AUDI",submarca: "A7"},
{marca: "AUDI",submarca: "Q3"},
{marca: "AUDI",submarca: "Q5"},
{marca: "AUDI",submarca: "S5"},
{marca: "AUDI",submarca: "A1"},
{marca: "AUDI",submarca: "A6 Allroad Quattro"},
{marca: "AUDI",submarca: "S7"},
{marca: "AUDI",submarca: "S6"},
{marca: "AUDI",submarca: "S8"},
{marca: "AUDI",submarca: "RS4"},
{marca: "AUDI",submarca: "RS5"},
{marca: "AUDI",submarca: "R8"},
{marca: "AUDI",submarca: "SQ5"},
{marca: "AUDI",submarca: "Q7"},
{marca: "AUDI",submarca: "RS6"},
{marca: "AUDI",submarca: "RS7"},
{marca: "AUDI",submarca: "RS Q3"},
{marca: "AUDI",submarca: "S3"},
{marca: "AUDI",submarca: "S1"},
{marca: "AUDI",submarca: "TTS"},
{marca: "AUDI",submarca: "S4"},
{marca: "AUDI",submarca: "RS3"},
{marca: "AUDI",submarca: "SQ7"},
{marca: "AUDI",submarca: "Q2"},
{marca: "AUDI",submarca: "TTS"},
{marca: "AUDI",submarca: "SQ7"},
{marca: "AUDI",submarca: "S4"},
{marca: "AUDI",submarca: "S6"},
{marca: "AUDI",submarca: "S7"},
{marca: "BENTLEY",submarca: "Continental GT"},
{marca: "BENTLEY",submarca: "Mulsanne"},
{marca: "BENTLEY",submarca: "Flying Spur"},
{marca: "BENTLEY",submarca: "Continental GTC"},
{marca: "BENTLEY",submarca: "Bentayga"},
{marca: "BMW",submarca: "Serie 3"},
{marca: "BMW",submarca: "Serie 5"},
{marca: "BMW",submarca: "Serie 4"},
{marca: "BMW",submarca: "Serie 7"},
{marca: "BMW",submarca: "Z4"},
{marca: "BMW",submarca: "X5"},
{marca: "BMW",submarca: "Serie 1"},
{marca: "BMW",submarca: "X3"},
{marca: "BMW",submarca: "Serie 6"},
{marca: "BMW",submarca: "X1"},
{marca: "BMW",submarca: "X6"},
{marca: "BMW",submarca: "I3"},
{marca: "BMW",submarca: "Serie 2"},
{marca: "BMW",submarca: "X4"},
{marca: "BMW",submarca: "I8"},
{marca: "BMW",submarca: "Serie 2 Gran Tourer"},
{marca: "BMW",submarca: "Serie 2 Active Tourer"},
{marca: "BYD",submarca:"E6"},
{marca: "CHEVROLET",submarca: "Cruze"},
{marca: "CHEVROLET",submarca: "Aveo"},
{marca: "CHEVROLET",submarca: "Trax"},
{marca: "CHEVROLET",submarca: "Orlando"},
{marca: "CHEVROLET",submarca: "Spark"},
{marca: "CHEVROLET",submarca: "Camaro"},
{marca: "CITROEN",submarca: "C4"},
{marca: "CITROEN",submarca: "C3"},
{marca: "CITROEN",submarca: "C5"},
{marca: "CITROEN",submarca: "C3 Picasso"},
{marca: "CITROEN",submarca: "C4 Picasso"},
{marca: "CITROEN",submarca: "Grand C4 Picasso"},
{marca: "CITROEN",submarca: "C4 Aircross"},
{marca: "CITROEN",submarca: "Nemo"},
{marca: "CITROEN",submarca: "Berlingo"},
{marca: "CITROEN",submarca: "C-Elysée"},
{marca: "CITROEN",submarca: "C4 Cactus"},
{marca: "CITROEN",submarca: "Cz1"},
{marca: "CITROEN",submarca: "C-Zero"},
{marca: "CITROEN",submarca: "C-Elysée"},
{marca: "CITROEN",submarca: "Spacetourer"},
{marca: "CITROEN",submarca: "E-Mehari"},
{marca: "CITROEN",submarca: "C3 Aircross"},
{marca: "DACIA",submarca: "Logan"},
{marca: "DACIA",submarca: "Lodgy"},
{marca: "DACIA",submarca: "Sandero"},
{marca: "DACIA",submarca: "Duster"},
{marca: "DACIA",submarca: "Dokker"}	
]

roles= [
{ id: 1, nombre:"Admin", descripcion: "Administrador"},
{ id: 2, nombre:"Cliente", descripcion: "Cliente"},
{ id: 3, nombre:"User", descripcion: "usuario con dependencia"}
]

inspeccion= [
{ id: 1,estatus_inspeccion:"true", notas_inspeccion: "nota falsa", fecha_inspeccion: "12/01/2017", fecha_actualizacion: "12/01/2017", idcat_puntos_inspeccion: 1, idcliente_autos: 1, cotizacion:9},
{ id: 2, estatus_inspeccion:"true", notas_inspeccion: "nota falsa", fecha_inspeccion: "12/01/2017", fecha_actualizacion: "12/01/2017", idcat_puntos_inspeccion: 1, idcliente_autos: 1, cotizacion:9 }
]

 	     
puntos= [
{ id: 1, id_forma: 1, id_cat_puntos_inspeccion: 1, nombre:"Carroceria exterior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Exterior", url_video:"t.string", url_imagen: "urlvideo"},
{ id: 2, id_forma: 1, id_cat_puntos_inspeccion: 2, nombre:"Carroceria Tablero", tipo: "Sugeridos", cat_puntos_desc: "Tablero" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 3, id_forma: 1, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Palanca de frenos", tipo: "Sin_reparacion", cat_puntos_desc: "Frenos" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 4, id_forma:1, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 5, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 6, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 7, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 8, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 9, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 10, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"},
{ id: 11, id_forma:2, id_cat_puntos_inspeccion: 3, nombre:"Carroceria Interior", tipo: "Urgentes", cat_puntos_desc: "Carroceria Interior" , url_video:"t.string", url_imagen: "urlvideo"}
]

cat_puntos_inspeccion= [
{ id: 1, nombre:"Carroceria exterior", tipo: "Inicial", descripcion: "Carroceria Exterior"},
{ id: 2,  nombre:"Carroceria Tablero", tipo: "total", descripcion: "Tablero" },
{ id: 3, nombre:"Carroceria Palanca de frenos", tipo: "Inicial", descripcion: "Frenos" },
{ id: 4,  nombre:"Carroceria Interior", tipo: "Inicial", descripcion: "Carroceria Interior"}
]

Punto.create(puntos)
Cpunto.create(cat_puntos_inspeccion) 
Auto.create(autos)
Forma.create(inspeccion)
Rol.create(roles)
Cauto.create(cat_autos)

User.create!(:name => 'SuperAdmin',:username => 'superadmin',:role => 1,:email => 'tdelangel121@gmail.com',:password => 'sadmin1234')

