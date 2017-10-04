class Auto < ActiveRecord::Base 
	self.table_name = "autos"	
	has_many :formas
end
