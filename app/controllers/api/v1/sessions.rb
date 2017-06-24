require "base64"
module API
  	module V1		
		class Sessions < Grape::API
			include API::V1::Defaults

			#response_to :html, :json
			#skip_before_filter :authorize_user!
			helpers do
				#private

		    	def create_session(user)
	    			User.update(user.id, :authentication_token => user.authentication_token)
		            render json: {
		            user_id: user.id,
		            access_token: user.authentication_token,
		            token_type: "bearer",
		            expires_in: 4.hours, :public => true,
		            role: user.role
		            }, status: 201
		        end

		        def restore_session(user)
		        	puts 'restore_session'
		        	render json: {
			            user_id: user.id,
			            access_token: user.authentication_token,
			            token_type: "bearer",
			            expires_in: 4.hours, :public => true
		            }, status: 201
		        end

		        def invalid_credentials
		        	puts 'invalid_credentials'
	            	render error: {}, status: 401
		        end

		        def missing_params
		        	puts 'missing_params --->'
	            	render json: {}, status: 400
		        end
			end


			resource :sessions do 
				post "/validate_session" do
					puts params
					begin
						user = User.where('id = ?', params[:user_id]).first!
						puts user
						puts user[:authentication_token]
						if( user[:authentication_token] == params[:token])
							puts 'sessión existe'
							return restore_session(user)
						else
							puts 'Caducó tu sessión'
							return invalid_credentials
						end
					rescue
						{:error => 'esta session no inicia'}
					end					
				end

				post "/sign_in" do			
					if params[:grant_type] == "password"
						#return invalid_credentials unless (params[:username] && params[:password])
						begin							                   							
							username = Base64.decode64(params[:username])
							password = Base64.decode64(params[:password])
									puts username
									puts password					
							user = User.where("email = ?", username).first!	

							if ((params[:origen]=='true') && ((user.role=='SA')||(user.role=='AD')||(user.role=='ED')||(user.role=='EAD')||(user.role=='EED')))
								if user && user.valid_password?(password)
							        user.ensure_authentication_token						        
							        return create_session(user)
						      	else						      		
						        	return invalid_credentials
						      	end
						    elsif ((params[:origen].nil?) && ((user.role=='Administrador')||(user.role=='Editor')))
						    	if user && user.valid_password?(password)
							        user.ensure_authentication_token						        
							        return create_session(user)
						      	else						      		
						        	return invalid_credentials
						      	end
						    else
						    	return invalid_credentials  	
						    end							    	  		
					    rescue
					    	{:error => 'Error al iniciar session'}
					    end
			      	else
			      		puts 'fail missing_params'
			      		return missing_params
				    end				
				end

				post '/sign_out' do
					puts 'logout'
					puts params
			        return missing_params unless (params[:token])
			        
			        puts params[:access_token]
			        user = User.find_by(authentication_token: params[:token])

			        if user
			          user.reset_authentication_token!
			          render json: {
			            user_id: user.id
			          }, status: 200
			        else
			          return invalid_credentials
			        end
			    end

			end

		end
	end
end