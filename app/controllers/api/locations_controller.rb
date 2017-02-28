class Api:LocationsController < ApplicationController
  def index
    render json: Locations.all
  end
end
