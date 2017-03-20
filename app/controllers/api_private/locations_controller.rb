class ApiPrivate::LocationsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    if country
      location_names = Location.where(location_group: country.location_group_id).pluck(:name)
      render json: {locations: location_names}
    else
      render json: { error: "Ups! There is no country!", available_params: "/PL, /RU, /AU"}, status: 400
    end
  end
end
