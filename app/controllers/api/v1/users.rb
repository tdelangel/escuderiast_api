
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
              usuarios = User.where(role:[1]) 
            else
              usuarios = User.where(role:[1])
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
              requires :name, type: String
              requires :email, type: String
              requires :username, type: String
              #requires :encrypted_password, type: String
              requires :password, type: String
              optional :role, type: String
              optional :estado_id, type: Integer
              optional :dependencia_id, type: Integer
              #optional :active, type: Boolean              
            end
          end
          post "/" do
            parameters = ActionController::Parameters.new(params).require(:user)
            parameters.permit(:name, :email, :username, :password, :role, :estado_id, :dependencia_id)
            begin
              generated_password = Devise.friendly_token.first(8)
              user = User.create!(
                :name => parameters[:name],
                :email => parameters[:email],
                :username => parameters[:username],
                :password => generated_password,
                :role => parameters[:role],
                :estado_id => parameters[:estado_id],
                :dependencia_id => parameters[:dependencia_id]
              )
              {:user=>user}
            rescue
              error! 'Nombre de Usuario y Correo Electrónico deben ser únicos', 422
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
              optional :estado_id, type: Integer
              optional :dependencia_id, type: Integer             
            end
          end
          put "/:id" do
            user_id = ActionController::Parameters.new(params).require(:id)
            parameters = ActionController::Parameters.new(params).require(:user)
            user = User.find(user_id)
            if user
             begin
                user.update(
                  parameters.permit(:name, :email, :username, :encrypted_password, :role, :active, :estado_id, :dependencia_id)
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