class CatUsuarios < ActiveRecord::Migration[5.0]
  	def change
		create_table :datos_generales do |t|
	      t.string :nombre
	      t.string :apaterno
	      t.string :amaterno
	      t.string :correo
	      t.string :puesto
	      t.string :estatus
	      t.string :user_cel
	      t.string :user_tel
	    end  	
  	end
end
