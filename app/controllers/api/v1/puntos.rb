module API
  module V1
    class Puntos < Grape::API 
      include API::V1::Defaults      
      resource :puntos  do        
        desc "DEBUG - Lista todo los puntos de inspeccion"
        get "/" do
          Punto.all
        end

        desc "Busca puntos de inspeccion por id"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"punto" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          punto_id = parameters[:id]

          punto = Punto.find(punto_id)          

          {:punto=>punto}  
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
