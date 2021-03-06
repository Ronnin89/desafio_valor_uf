class Api::ClientsController < ApplicationController
    def by_user
      @client = Client.find_by(name: params[:name])
   
      if @client 
        render json: @client
      else
        render json: { error: "El usuario no fue encontrado." }
      end
    end
  end