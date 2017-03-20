class ApiPrivate::TargetGroupsController < ApplicationController
  def index
    country = Country.find_by_country_code(params[:country_code])
    if country
      target_groups = TargetGroup.where(panel_provider_id: country.panel_provider_id).pluck(:id)
      render json: {TargetGroups: target_groups}
    else
      render json: { error: "Ups! There is no country!", available_params: "/PL, /RU, /AU"}, status: 400
    end
  end
end
