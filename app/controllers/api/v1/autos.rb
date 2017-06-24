module API
  module V1
    class Autos < Grape::API 
      include API::V1::Defaults      
      resource :autos  do        
        desc "DEBUG - Lista todo los autos"
        get "/" do
          Auto.all
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

          {:auto=>auto}  
        end

      desc "Crear Formulario"
      params do
        requires :auto, :type => Hash do
          requires :idcat_autos, type: Integer
          requires :cat_autos_placas, type: String                        
          requires :cat_autos_notas, type: String
          requires :cat_autos_anio, type: Integer
          requires :cat_autos_marca, type: String
          requires :cat_autos_modelo, type: String
          requires :cat_autos_vin, type: String         
        end  
      end        
      post "/",root:"auto" do
        parameters = ActionController::Parameters.new(params).require(:auto)                     
        parameters.permit(:idcat_autos, :cat_autos_placas, :cat_autos_notas, :pago, :cat_autos_anio, :cat_autos_marca)
            auto = Auto.create!({
              :idcat_autos=>parameters[:idcat_autos],
              :cat_autos_placas=>parameters[:cat_autos_placas],
              :cat_autos_notas=>parameters[:cat_autos_notas],                
              :cat_autos_anio=>parameters[:cat_autos_marca],
              :cat_autos_marca=>parameters[:nombre].strip,
              :cat_autos_modelo=>parameters[:cat_autos_modelo],
              :fecha_inicio=>parameters[:fecha_inicio],
              :cat_autos_vin=>parameters[:cat_autos_vin]            
             })
              {:autos=>auto}            
           end           
        end
     end
   end 
end
