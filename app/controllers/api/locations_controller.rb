class Api::LocationsController < ApplicationController
  def index
    binding.pry
    country = Country.find_by_country_code(params[:country_code])
    if country
      render json: panel_provider.locations
    else
      render json: { error: "Ups! There is no country!", available_params: "id"}, status: 400
    end
  end
end
