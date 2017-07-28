class CatRoles < ActiveRecord::Migration[5.0]
 	def change
 	  	create_table :cat_roles do |t|
	      t.string :nombre
	      t.string :descripcion
		end
    end
end
