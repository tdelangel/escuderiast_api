class CatAutos < ActiveRecord::Migration[5.0]
  def change
	  	create_table :cat_autos do |t|
	      t.integer :idcat_autos
	      t.string :cat_autos_placas
	      t.string :cat_autos_notas
	      t.integer :cat_autos_anio
	      t.string :cat_autos_marca
	      t.string :cat_autos_modelo
	      t.string :cat_autos_vin
		end
    end
end
