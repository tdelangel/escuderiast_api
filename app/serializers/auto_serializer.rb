class AutoSerializer < ActiveModel::Serializer
  attributes :id, :id_cat_autos, :placas, :notas, :anio, :vin, :id_cliente
end

