class Api::TargetGroupsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    if country
      render json: {locations: country.panel_provider.locations}
    else
      render json: { error: "Ups! There is no country!", available_params: "id"}, status: 400
    end
  end
end
