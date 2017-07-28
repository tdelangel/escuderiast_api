class CatClientes < ActiveRecord::Migration[5.0]
  	def change
		create_table :cat_clientes do |t|
			t.integer :cat_cliente_id	
		   	t.string :cat_cliente_nombre
		   	t.string :cat_cliente_paterno
		   	t.string :cat_cliente_materno
		   	t.string :cat_cliente_correo
		   	t.integer :cat_cliente_tel
		   	t.integer :cat_cliente_cel
		end
  	end
end
