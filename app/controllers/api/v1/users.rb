
module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      resource :users do
          desc "Lista Usuarios"
          get "/" do
            parameters = ActionController::Parameters.new(params)
            parameters.permit(:origen)
            origen = parameters[:origen]
            if (origen=='true')
              usuarios = User.where(role:[1,2,3]) 
            else
              usuarios = User.where(role:[1,2,3])
            end                      
            present usuarios
          end

          desc "User ID"
          get "/:id" do
            parameters = ActionController::Parameters.new(params)
            parameters.permit(:id)
            user_id = parameters[:id]
            user = User.find(user_id)
            {:users => user}
          end

          desc "Crear Usuario"
          params do
            requires :user, :type => Hash do
              requires :email, type: String
              requires :username, type: String
              requires :password, type: String
              optional :role, type: String    
              requires :nombre, type: String     
              requires :apaterno, type: String     
              requires :amaterno, type: String     
              requires :user_tel, type: String     
              requires :user_cel, type: String     
              requires :puesto, type: String     
            end
          end
          post "/" do
            
            parameters = ActionController::Parameters.new(params).require(:user)
            parameters.permit(:email, :username, :password, :role)
      
            begin
              generated_password = Devise.friendly_token.first(8)
              user = User.create!(
                :name => parameters[:nombre],
                :email => parameters[:email],
                :username => parameters[:username],
                :password => generated_password,
                :role => parameters[:role])
              
            id = user.id
              user = Datos_general.create!(
                :id => id,
                :nombre => parameters[:nombre],
                :amaterno => parameters[:amaterno],
                :apaterno => parameters[:apaterno],
                :puesto => parameters[:puesto],
                :estatus => parameters[:estatus],
                :user_cel => parameters[:user_cel],
                :user_tel => parameters[:user_tel],
              )
        
          

                 {:user=>user}
            rescue
              error! 'Nombre de Usuario y Correo Electrónico deben ser únicos y el rol debe ser del catalogo de roles', 422
            end
          end

          desc "Actualizar Usuario"
          params do
            requires :id, :type => Integer
            requires :user, :type => Hash do
              optional :name, type: String
              optional :email, type: String
              optional :username, type: String
              optional :encrypted_password, type: String
              optional :role, type: String
              optional :active, type: String       
            end
          end
          put "/:id" do
            user_id = ActionController::Parameters.new(params).require(:id)
            parameters = ActionController::Parameters.new(params).require(:user)
            user = User.find(user_id)
            if user
             begin
                user.update(
                  parameters.permit(:name, :email, :username, :encrypted_password, :role, :active)
                )
                {:user=>user}
             rescue
               error! 'Nombre de Usuario y Correo Electrónico deben ser únicos', 422
             end
            end
          end

          desc "Delete User por ID"
          params do
            requires :id, type: Integer, desc: "User ID."
          end
          delete "/:id" do
            user_id = ActionController::Parameters.new(params).require(:id)
            user = User.find(user_id)
            if user
              user.delete()
              {:user=>''}
            end
          end
      end
    end
  end
end