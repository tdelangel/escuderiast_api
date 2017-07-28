class AddCatMarcaAuto < ActiveRecord::Migration[5.0]
	def change  
	  	create_table :cat_marca_auto do |t|
	      t.string :marca
	      t.string :submarca
	      t.string :anio
		end
    end
end
