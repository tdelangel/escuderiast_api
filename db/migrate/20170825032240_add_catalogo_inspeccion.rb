class AddCatalogoInspeccion < ActiveRecord::Migration[5.0]
  	def change  
	  	create_table :cat_puntos_inspeccion do |t|
	      t.string :nombre
	      t.string :tipo
	      t.string :descripcion
	      t.string :url_video
	      t.string :url_imagen
		end
	end
end
