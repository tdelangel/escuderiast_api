class ClienteAutos < ActiveRecord::Migration
  	def change
		create_table :cliente_autos do |t|
	   	t.integer :idcliente_autos
	   	t.integer :idcat_auto
	   	t.integer :idcat_cliente
		end  	
	#	add_foreign_key :cliente_autos, :cat_puntos_inspeccion, column: :id_cat_puntos_inspeccion, primary_key: "id"	
	#	add_foreign_key :cliente_autos, :cat_cliente, column: :idcat_cliente, primary_key: "id"	
  	end
end
