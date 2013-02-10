class HomeController < ApplicationController
  def index
    @apis = Api.order("created_at DESC").page(params[:page]).per(10)
  end
end
