        module API
          module V1
            class Formas < Grape::API 
              include API::V1::Defaults      
              resource :formas  do        
                desc "DEBUG - Lista todo los forma"
        get "/" do
          Forma.all
        end
        
        desc "Busca forma por id"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"forma" do
        
          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          form_id = parameters[:id]
        
          forma = Forma.find(form_id)     
          autos   = Auto.find(form_id)  
        
          {:forma=>forma, :autos=>autos}
        end
        desc "create a new cat autos"
        ## This takes care of parameter validation
        params do
          requires :forma, :type => Hash do
            requires :estatus_inspeccion, type:String
            requires :notas_inspeccion, type:String
            requires :fecha_inspeccion, type: DateTime
            requires :fecha_actualizacion, type: DateTime
            requires :idcat_puntos_inspeccion,  type:Integer
            requires :idcliente_autos, type:Integer
            requires :cotizacion, type: Integer
            requires :url_video, type:String
            requires :url_imagen,  type:String
          end
        end
        ## This takes care of creating employee
        post "/",root: "forma" do
        puts "PARAMETROS"
        parameters = ActionController::Parameters.new(params).require(:forma)                     
        parameters.permit(:estatus_inspeccion, :notas_inspeccion, :fecha_inspeccion, :fecha_actualizacion, :idcat_puntos_inspeccion,:idcliente_autos, :cotizacion, :url_video, :url_imagen )
          puts "PARAMETROS: #{params[:forma]}"
            forma = Forma.create!({
              :estatus_inspeccion=>parameters[:estatus_inspeccion],
              :notas_inspeccion=>parameters[:notas_inspeccion],
              :fecha_inspeccion=>parameters[:fecha_inspeccion],    
              :fecha_actualizacion=>parameters[:fecha_actualizacion],    
              :idcat_puntos_inspeccion=>parameters[:idcat_puntos_inspeccion],    
              :idcliente_autos=>parameters[:idcliente_autos],    
              :cotizacion=>parameters[:cotizacion],    
              :url_video=>parameters[:url_video],    
              :url_imagen=>parameters[:url_imagen]    
              })
          
            {:formas=>forma}   
            end  
        desc "Actualizar Forma"
        params do
          requires :id,  type: Integer         
         requires :forma, :type => Hash do
            requires :estatus_inspeccion, type:String
            requires :notas_inspeccion, type:String
            requires :fecha_inspeccion, type: DateTime
            requires :fecha_actualizacion, type: DateTime
            requires :idcat_puntos_inspeccion,  type:Integer
            requires :idcliente_autos, type:Integer
            requires :cotizacion, type: Integer
            requires :url_video, type:String
            requires :url_imagen,  type:String       
          end         
        end
        put "/:id", root:"forma" do
           form_id = ActionController::Parameters.new(params).require(:id)
           parameters = ActionController::Parameters.new(params).require(:forma)
          puts "PARAMETROS: #{params[:forma]}"
           puts "identificador #{params[:id]}"
           puts form_id
        
        if (!params[:id].nil?)
          forma = Forma.where("id = ?", form_id).count           
                 
                forma = Forma.find(form_id)          
                if forma
                  forma.update(
        
                    :estatus_inspeccion=>parameters[:estatus_inspeccion],
                    :notas_inspeccion=>parameters[:notas_inspeccion],
                    :fecha_inspeccion=>parameters[:fecha_inspeccion],    
                    :fecha_actualizacion=>parameters[:fecha_actualizacion],    
                    :idcat_puntos_inspeccion=>parameters[:idcat_puntos_inspeccion],    
                    :idcliente_autos=>parameters[:idcliente_autos],    
                    :cotizacion=>parameters[:cotizacion],    
                    :url_video=>parameters[:url_video],    
                    :url_imagen=>parameters[:url_imagen]     
                   ) 
                   else 
                
                      {:error=>"No existe un registro con ese indentificador"}
                end            
             end
          end  
                 desc "Delete Forma por ID"
          params do
            requires :id, type: Integer, desc: "Forma Id."
          end
          delete "/:id" do
            id = ActionController::Parameters.new(params).require(:id)
            deleteforma = Forma.find(id)
            if deleteforma
              deleteforma.delete()
              {:Request=>'Eliminado'}
            else 
               {Error=>'La forma enviada no pudo ser eliminada'}
            end
          end            
        end              
      end
   end
end