class ApisController < ApplicationController
  def index
    @apis = Api.all
  end

  def new
    @api = Api.new
  end

  def create
    Rails.logger.info "Creating API"
    api = Api.new api_params
    if api.save
      flash[:notice] = "Successfully created an API"
      flash[:type]   = "alert-success"
      redirect_to api
    else
      flash[:notice] = "Error adding API"
      flash[:type]   = "alert-error"
      render "new"
    end
  end

  def edit
    if params[:id] && @api = Api.find_by_id(params[:id])
      @api
    else
      redirect_to "/404.html"
    end
  end

  def update
    Rails.logger.info "Updating API"
    if params[:id] && @api = Api.find_by_id(params[:id])
      api = Api.find_by_id(params[:id])
      if api.update_attributes!(api_params)
        flash[:notice] = "Successfully updated API"
        flash[:type]   = "alert-success"
      else
        flash[:notice] = "Error updating API"
        flash[:type]   = "alert-error"
      end

      redirect_to api
    else
      redirect_to "/404.html"
    end
  end

  def show
    Rails.logger.info "Showing API"
    if params[:id] && @api = Api.find_by_id(params[:id])
      Rails.logger.info params[:id] + " - " + @api.inspect
      @api
    else
      redirect_to "/404.html"
    end
  end

  def destroy
    Rails.logger.info "Deleting API"
    if params[:id] && @api = Api.find_by_id(params[:id])
      if @api.destroy
        flash[:notice] = "Successfully deleted API"
        flash[:type]   = "alert-success"
        redirect_to apis_url
      else
        flash[:notice] = "Error deleting API"
        flash[:type]   = "alert-error"
        redirect_to @api
      end
    else
      redirect_to "/404.html"
    end
  end

  private
    def api_params
      params.required(:api).permit(:name, :path, :docs)
    end
end
