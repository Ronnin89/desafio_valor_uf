class Api::UfValuesController < ActionController::API
    include ActionController::MimeResponds

    def by_date

        @client = Client.find_by(name: request.headers['X-CLIENTE'])

        if @client
            @client.viewing += 1
            @client.save
        
            @uf_day = UfValue.find_by(created_at: DateTime.parse(params[:date]))
            respond_to :json
            
            if @uf_day 
                render json: @uf_day.to_json(only: [:id, :value])
            else
                render json: { error: "Fecha no encontrada" }
            end
        else
            render json: { error: "No hay usuario" }
        end
        
    end
end