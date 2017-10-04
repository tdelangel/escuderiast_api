module API
  module V1
    class Cautos < Grape::API 
      include API::V1::Defaults      
      resource :cautos  do        
        desc "DEBUG - Lista todo las marcas de autos y submarcas"
        get "/" do
          Cauto.all
        end

        desc "Busca Marca y submarcas de autos por id"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"auto" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          form_id = parameters[:id]

          auto = Cauto.find(form_id)          

          {:cauto=>auto}  
        end

        desc "Agrega Una marca de Auto"
        params do
          requires :cauto, :type => Hash do
            requires :marca, type: String                        
            requires :submarca, type: String      
          end  
        end        
        post "/",root:"auto" do
          parameters = ActionController::Parameters.new(params).require(:auto)                     
          parameters.permit(:marca, :submarca)
          auto = Auto.create!({
            :marca=>parameters[:marca],
            :submarca=>parameters[:submarca]           
            })
          {:cautos=>auto}            
        end           
      end
    end
  end 
end
