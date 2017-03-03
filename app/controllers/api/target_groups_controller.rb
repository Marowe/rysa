class Api::TargetGroupsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    if country
      render json: panel_provider.target_group
    else
      head 500
    end
  end
end
