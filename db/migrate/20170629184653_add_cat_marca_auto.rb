class AddCatMarcaAuto < ActiveRecord::Migration
	def change  
	  	create_table :cat_marca_auto do |t|
	      t.string :marca
	      t.string :submarca
		end
    end
end
