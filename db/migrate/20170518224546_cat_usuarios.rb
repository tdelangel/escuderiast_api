class CatUsuarios < ActiveRecord::Migration
  	def change
		create_table :datos_generales do |t|
	      t.string :nombre
	      t.integer :id_user
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
