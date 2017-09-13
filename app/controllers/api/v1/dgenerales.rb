module API
  module V1
    class Dgenerales < Grape::API 
      include API::V1::Defaults      
      resource :dgenerales  do        
        desc "DEBUG - Lista  los datos generales"
        get "/" do
          Datos_general.all
        end

        desc "Busca Datos generales de los usuarios por id"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"dgenerales" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          form_id = parameters[:id]

          dgenerales = Datos_general.find(form_id)          

          {:dgenerales=>dgenerales}  
        end

        desc "Inserta los  Datos generales de los usuarios"
        params do
          requires :user, :type => Hash do
            requires :id, type: Integer
            requires :nombre, type: String                        
            requires :apaterno, type: String
            requires :amaterno, type: Integer
            requires :puesto, type: String
            requires :estatus, type: String
            requires :user_cel, type: String  
            requires :user_tel, type: String  
           
          end  
        end        
        post "/",root:"dgenerales" do
          parameters = ActionController::Parameters.new(params).require(:dgenerales)                     
          parameters.permit(
            :id ,
            :nombre ,
            :apaterno,
            :amaterno,
            :correo ,
            :puesto ,
            :estatus,
            :user_cel ,
            :user_tel 
            )
          dgenerales = dgenerales.create!({
            :id  => parameters[:id ],
            :nombre  => parameters[:nombre ],
            :apaterno => parameters[:apaterno],
            :amaterno => parameters[:amaterno],
            :correo  => parameters[:correo ],
            :puesto  => parameters[:puesto ],
            :estatus => parameters[:estatus],
            :user_cel  => parameters[:user_cel ],
            :user_tel => parameters[:user_tel]})

          {:dgeneraless=>dgenerales}            
        end           
      end
    end
  end 
end