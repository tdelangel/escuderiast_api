module API
  module V1
    class Cpuntos < Grape::API 
      include API::V1::Defaults      
      resource :cpuntos  do        
        desc "DEBUG - Lista todo catalogos puntos de inspeccion"
        get "/" do
          Cpunto.all
        end

        desc "Busca puntos de inspeccion por id y tipo"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"punto" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          punto_id = parameters[:id]

          cpuntos = Cpunto.find(punto_id)          

          {:catPuntos=>cpuntos}  
        end

      desc "Crear Los Puntos de Inspeccion"
      params do
        requires :punto, :type => Hash do
          requires :id_cat_puntos_inspeccion, type: String
          requires :cat_puntos_desc, type: String                        
          requires :tipo, type: String      
        end  
      end        
      post "/",root:"punto" do
        parameters = ActionController::Parameters.new(params).require(:punto)                     
        parameters.permit(:id_cat_puntos_inspeccion, :cat_puntos_desc, :tipo)
            punto = Punto.create!({
              :id_cat_puntos_inspeccion=>parameters[:id_cat_puntos_inspeccion],
              :cat_puntos_desc=>parameters[:cat_puntos_desc],
              :tipo=>parameters[:tipo]         
             })
              {:punto=>punto}            
           end           
        end
     end
   end 
end
