module API
  module V1
    class Puntos < Grape::API 
      include API::V1::Defaults      
      resource :puntos  do        
        desc "DEBUG - Lista todo los puntos de inspeccion"
        get "/" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id_forma)
            id_forma = parameters[:id_forma]    
          if (!id_forma.nil?)
           puntos = Punto.where("id_forma = ? ", id_forma).order(" id ASC")

           joinSet = []

           puntos.each{ |puntos| 
            joinObject = {} 
            joinObject[:id] = puntos.id        
            joinObject[:id_cat_puntos_inspeccion] = puntos.id_cat_puntos_inspeccion        
            joinObject[:nombre] = puntos.nombre        
            joinObject[:cat_puntos_desc] = puntos.cat_puntos_desc        
            joinObject[:tipo] = puntos.tipo        
            joinObject[:id_forma] = puntos.id_forma        
            joinObject[:url_video] = puntos.url_video        
            joinObject[:url_imagen] = puntos.url_imagen        
            joinSet << joinObject 
          }

          {:puntos=>joinSet} 

      else
        Punto.all
      end
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
        requires :id_forma, type: String
        requires :nombre, type: String
        requires :id_cat_puntos_inspeccion, type: String
        requires :cat_puntos_desc, type: String                        
        requires :tipo, type: String      
      end  
    end        
    post "/",root:"punto" do
      parameters = ActionController::Parameters.new(params).require(:punto)                     
      parameters.permit(:id_cat_puntos_inspeccion, :cat_puntos_desc, :tipo, :url_imagen, :url_video, :nombre, :id_forma)
      punto = Punto.create!({
        :id_cat_puntos_inspeccion=>parameters[:id_cat_puntos_inspeccion],
        :cat_puntos_desc=>parameters[:cat_puntos_desc],
        :tipo=>parameters[:tipo],
        :url_video=>parameters[:url_video],
        :url_imagen=>parameters[:url_imagen],
        :nombre=>parameters[:nombre],
        :id_forma=>parameters[:id_forma]
        })
      {:punto=>punto}            
    end           
  end
end
end 
end
