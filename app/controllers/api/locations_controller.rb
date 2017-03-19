class Api::LocationsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    if country
      location = Location.where(location_group: country.location_group_id)
      locations = location.pluck(:name)
      render json: {locations: locations}
    else
      render json: { error: "Ups! There is no country!", available_params: "/PL, /RU, /AU"}, status: 400
    end
  end
end
