class Auto < ActiveRecord::Base 
	self.table_name = "cat_autos"	
	has_many :formas
end
