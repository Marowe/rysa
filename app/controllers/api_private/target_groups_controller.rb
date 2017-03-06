class ApiPrivate::TargetGroupsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    if country
      render json: panel_provider.target_group
    else
      render json: { error: "Ups! There is no country!", available_params: "id"}, status: 400
    end
  end
end
