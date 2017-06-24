class CatUsuarios < ActiveRecord::Migration[5.0]
  	def change
		create_table :cat_usuario do |t|
	      t.integer :idcat_usuario
	      t.string :cat_usuario_nombre
	      t.string :cat_usuario_paterno
	      t.string :cat_usuario_materno
	      t.string :cat_usuario_correo
	      t.string :cat_usuario_puesto
	      t.string :cat_usuario_estatus
	      t.string :cat_usuario_cel
	      t.string :cat_usuario_tel
	    end  	
  	end
end
