class Api:TargetGroupsController < ApplicationController
  def index
    render json: TargetGroups.all
  end
end
