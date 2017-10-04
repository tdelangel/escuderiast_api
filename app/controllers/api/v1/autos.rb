module API
  module V1
    class Autos < Grape::API 
      include API::V1::Defaults      
      resource :autos  do        
        desc "DEBUG - Lista todo los autos"
        get "/" do
          allAutos = Auto.all

                joinSet = []

                allAutos.each{ |auto| 
                  cat_autos = auto.id_cat_autos
              
                  cat = Cauto.where(id: cat_autos);
                        joinObject = {} 
                  joinObject[:id] = auto.id
                  joinObject[:placas] = auto.placas
                  joinObject[:notas] = auto.notas
                  joinObject[:anio] = auto.anio
                  joinObject[:id_cat_autos] = auto.id_cat_autos
                  joinObject[:vin] = auto.vin
                  joinObject[:id_cliente] = auto.id_cliente
                   joinObject[:cat_autos] = cat

                  joinSet << joinObject 
                }
                {:auto=>joinSet} 
        end

        desc "Busca autos por id"  
        params do
          requires :id, type: Integer, desc: "ActionType ID."
        end    
        get "/:id", root:"auto" do

          parameters = ActionController::Parameters.new(params)
          parameters.permit(:id)
          form_id = parameters[:id]

          auto = Auto.find(form_id)          

            joinSet = []

               
                  cat_autos = auto.id_cat_autos
              
                  cat = Cauto.where(id: cat_autos);
                        joinObject = {} 
                  joinObject[:id] = auto.id
                  joinObject[:placas] = auto.placas
                  joinObject[:notas] = auto.notas
                  joinObject[:anio] = auto.anio
                  joinObject[:id_cat_autos] = auto.id_cat_autos
                  joinObject[:id_cliente] = auto.id_cliente
                   joinObject[:vin] = auto.vin
                   joinObject[:cat_autos] = cat

                  joinSet << joinObject 
                
                {:auto=>joinSet} 
        end

      desc "Crear Formulario"
      params do
        requires :auto, :type => Hash do                    
          requires :placas, type: String                        
          requires :notas, type: String
          requires :anio, type: Integer
          requires :id_cat_autos, type: Integer
          requires :id_cliente, type: Integer
          requires :vin, type: String         
        end  
      end        
      post "/",root:"auto" do
        parameters = ActionController::Parameters.new(params).require(:auto)                     
        parameters.permit( :placas, :notas, :anio, :id_cat_autos,:id_cliente, :vin)
            auto = Auto.create!({
              :placas=>parameters[:placas],
              :notas=>parameters[:notas],                
              :anio=>parameters[:anio],
              :id_cat_autos=>parameters[:id_cat_autos],
              :vin=>parameters[:vin],
              :id_cliente=>parameters[:id_cliente]
                         
             })
              {:autos=>auto}            
           end           
        end
     end
   end 
end
