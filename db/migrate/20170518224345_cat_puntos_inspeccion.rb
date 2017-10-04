class CatPuntosInspeccion < ActiveRecord::Migration
	def change
		create_table :puntos_inspeccion do |t|
	      t.string :id_cat_puntos_inspeccion 
	      t.string :cat_puntos_desc 
	      t.string :tipo 
	    end 
  	end
end
