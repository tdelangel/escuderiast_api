class AddCatalogoInspeccion < ActiveRecord::Migration
  	def change  
	  	create_table :cat_puntos_inspeccion do |t|
	      t.string :nombre
	      t.string :tipo
	      t.string :descripcion
	     
		end
	end
end
