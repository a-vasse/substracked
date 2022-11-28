class ResourcesController < ApplicationController

  def new
    @resource = Resource.new
    @category = %w(Entertainment Shopping Food Business Education Gaming Social Trvael Banking)
    authorize @resource
  end

  def create
    @resource = Resource.new(resource_params)
    authorize @resource
    @resource.user = current_user
    if @resource.save
      redirect_to subscriptions_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @resource = Resouce.find(params[:id])
    authorize @resource
    @resource.destroy
    redirect_to subscriptions_path
  end

  private

  def resource_params
    params.require(:resource).permit(:name, :url, :logo)
  end
end
