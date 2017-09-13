class ClienteAutosInspeccion < ActiveRecord::Migration[5.0]
  def change
  	create_table :cliente_autos_inspeccion do |t|
		    t.string  :estatus_inspeccion
		    t.string  :notas_inspeccion
		    t.datetime :fecha_inspeccion
		    t.datetime :fecha_actualizacion
		    t.integer :idcat_puntos_inspeccion
		    t.integer :idcliente_autos
		    t.integer :cotizacion
		end
  end
end
