class HomeController < ApplicationController
  def index
    @apis = Api.reverse_order(:created_at).page(params[:page]).per(10)
  end
end
