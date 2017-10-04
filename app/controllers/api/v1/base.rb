#require "grape-swagger"

module API
  module V1
    class Base < Grape::API
      mount API::V1::Autos
      mount API::V1::Sessions
      mount API::V1::Formas
      mount API::V1::Users
      mount API::V1::Puntos
      mount API::V1::Cpuntos
      mount API::V1::Cautos
      mount API::V1::Dgenerales

      helpers do
        protected

        def json_request?
          request.format.json?
        end

        private

          def default_json
            request.format = :json if params[:format].nil?
          end

          def authorize_user!
            unless current_user
              return invalid_credentials
            end
          end 

          def current_user
          # Get access_token from headers (see: http://tools.ietf.org/html/rfc6749#page-37)
          auth_header = request.headers['HTTP_AUTHORIZATION']
          if auth_header
            # check headers first
            access_token = auth_header.match(/\ABearer\s(.+)\z/)[1]
          elsif params[:access_token]
            # fall back to params
            access_token = params[:access_token]
          else
            # no access token provided
            return nil unless auth_header
          end
            @current_user ||= User.find_by(authentication_token: access_token)
          end

          def invalid_credentials
            render json: {}, status: 401
          end

          def missing_params
            render json: {}, status: 400
          end

          def render_validation_errors(errors)
            render json: {errors: errors.messages}, status: 422
          end

          def nonexistent_resource
            render json: {}, status: 404
          end

           def print_response_body
            puts response.body
          end

      end


      rescue_from(ActionController::ParameterMissing) do |parameter_missing_exception|
        errors = {}
        errors[parameter_missing_exception.param] = 'parameter is required'
        response = { message: "Action Failed",
                     errors: errors }
        render json: response, status: :unprocessable_entity
      end

      rescue_from(ActiveRecord::RecordNotFound) do |exception|
        nonexistent_resource
      end

      #add_swagger_documentation(
      #  api_version: "v2",
      #  hide_documentation_path: true,
      #  mount_path: "/api/v2/swagger_doc",
      #  hide_format: true
      #)
    end
  end
end
