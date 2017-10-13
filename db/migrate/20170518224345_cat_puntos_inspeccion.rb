class CatPuntosInspeccion < ActiveRecord::Migration
	def change
		create_table :puntos_inspeccion do |t|
	      t.string :id_cat_puntos_inspeccion 
	      t.string :nombre 
	      t.string :cat_puntos_desc 
	      t.string :tipo 
	      t.integer :id_forma
	       t.string :url_video
	      t.string :url_imagen
	    end 
  	end
end

