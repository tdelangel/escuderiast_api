class FormaSerializer < ActiveModel::Serializer
   attributes :id, :estatus_inspeccion, :notas_inspeccion, :fecha_inspeccion, :fecha_actualizacion, :idcat_puntos_inspeccion, :idcliente_autos, :cotizacion, :url_video,:url_imagen
end
