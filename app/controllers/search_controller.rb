class SearchController < ApplicationController

  def create
    palabra = params[:keyword]
    @pensioner = Pensioner.where(numero_oficio: palabra).or(Pensioner.where(promovente: palabra))
    if @pensioner
      respond_to do |format|
        format.json { render json: @pensioner }
        format.js
      end
    else
      flash[:notice] = "No se econtró nada"
    end
  end

  def filter
    # palabra = params[:date_keyword]
    # @pensioner = Pensioner.where()
    # if @pensioner
    #   respond_to do |format|
    #     format.json { render json: @pensioner }
    #     format.js
    #   end
    # else
    #   flash[:notice] = "No se econtró nada"
    # end
    @pensioners = Pensioner.all.order("created_at DESC")

  end

end
