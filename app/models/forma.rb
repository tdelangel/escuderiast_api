class Forma < ActiveRecord::Base 
    self.table_name = "cliente_autos_inspeccion"
    has_many :auto, foreign_key: "id"
    belongs_to :estado, foreign_key: "id_estado"
end
