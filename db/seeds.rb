# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cat_autos = [

{ id: 1,  idcat_autos:1, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Identidad" },
{ id: 2,  idcat_autos:2, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Identidad" },
{ id: 3,  idcat_autos:3, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Salud" },
{ id: 4,  idcat_autos:4, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Programas Sociales" },
{ id: 5,  idcat_autos:5, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Trabajo" },
{ id: 6,  idcat_autos:6, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Impuestos" },
{ id: 7,  idcat_autos:7, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Migración, Visa y Pasaporte" },
{ id: 8,  idcat_autos:8, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Economía" },
{ id: 9,  idcat_autos:9, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejemplo",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Territorio y vivienda" },
{ id: 10, idcat_autos:10, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Turismo" },
{ id: 11, idcat_autos:11, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Medio Ambiente" },
{ id: 12, idcat_autos:12, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Seguridad, legalidad y justicia" },
{ id: 13, idcat_autos:13, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Servicios Financieros" },
{ id: 14, idcat_autos:14, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Comunicaciones y transportes" },
{ id: 15, idcat_autos:15, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Asociaciones y Organizaciones" },
{ id: 16, idcat_autos:16, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Energía" },
{ id: 17, idcat_autos:17, cat_autos_placas: "AEMT1221", cat_autos_notas:"Nota ejempl",cat_autos_anio: 2017, cat_autos_marca:"Toyota", cat_autos_modelo:"Prius 2017",cat_autos_vin: "Trabajo"}
]



roles= [
{ id: 1, nombre:"Admin", descripcion: "Administrador"},
{ id: 2, nombre:"Cliente", descripcion: "Cliente"},
{ id: 3, nombre:"User", descripcion: "usuario con dependencia"}
]

inspeccion= [
{ id: 1, estatus_inspeccion:"true", notas_inspeccion: "nota falsa", fecha_inspeccion: "12/01/2017", fecha_actualizacion: "12/01/2017", idcat_puntos_inspeccion: 1, idcliente_autos: 1, cotizacion:9, url_video:"url video", url_imagen:"Url de imagen" },
{ id: 2, estatus_inspeccion:"true", notas_inspeccion: "nota falsa", fecha_inspeccion: "12/01/2017", fecha_actualizacion: "12/01/2017", idcat_puntos_inspeccion: 1, idcliente_autos: 1, cotizacion:9, url_video:"url video", url_imagen:"Url de imagen" }
]


cat_puntos_inspeccion= [
{ id: 1, nombre:"Carroceria exterior", tipo: "Inicial", descripcion: "Carroceria Exterior" },
{ id: 2, nombre:"Carroceria Tablero", tipo: "total", descripcion: "Tablero" },
{ id: 3, nombre:"Carroceria Palanca de frenos", tipo: "Inicial", descripcion: "Frenos" },
{ id: 4, nombre:"Carroceria Interior", tipo: "Inicial", descripcion: "Carroceria Interior" }
]

Cpunto.create(cat_puntos_inspeccion)
Auto.create(cat_autos)
Forma.create(inspeccion)
Rol.create(roles)

User.create!(:name => 'SuperAdmin',:username => 'superadmin',:role => 1,:email => 'tdelangel121@gmail.com',:password => 'sadmin1234')

