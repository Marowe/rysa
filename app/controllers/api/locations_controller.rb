class Api::LocationsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    locations = Location.where(location_group: country.location_group_id)
    if country
      render json: {locations: locations.pluck(:name)}
    else
      render json: { error: "Ups! There is no country!", available_params: "id"}, status: 400
    end
  end
end
