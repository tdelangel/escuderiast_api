module API
  module V1
    class Clientes < Grape::API 
    include API::V1::Defaults      
      resource :clientes  do        
        desc "DEBUG - Lista todo los clientes"
        get "/" do
          Cliente.all
        end

        desc "Busca clientes por id"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"cliente" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          form_id = parameters[:id]

          cliente = Cliente.find(form_id)          

          {:cliente=>cliente}  
        end
      end    
    end
  end
end 
