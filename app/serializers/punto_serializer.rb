class PuntoSerializer < ActiveModel::Serializer
  attributes :id,:id_cat_puntos_inspeccion, :cat_puntos_desc, :tipo	, :nombre, :id_forma, :url_video, :url_imagen
end
