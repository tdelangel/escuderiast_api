class Datos_general < ActiveRecord::Base 
	self.table_name = "datos_generales"	
	belongs_to :user
end
