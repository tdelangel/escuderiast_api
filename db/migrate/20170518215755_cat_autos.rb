class CatAutos < ActiveRecord::Migration
	def change
		create_table :autos do |t|
			t.integer :id_cliente
			t.string :placas
			t.string :notas
			t.integer :anio
			t.string :vin
			t.integer :id_cat_autos
		end
	end
end
