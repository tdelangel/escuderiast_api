class CatPuntosInspeccion < ActiveRecord::Migration[5.0]
	def change
		create_table :puntos_inspeccion do |t|
	      t.string :id_cat_puntos_inspeccion 
	      t.string :cat_puntos_desc 
	      t.string :tipo 
	    end 
  	end
end
