class ResourcesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @resources = Resource.where(topic_id: @topic.id)
    render :index
  end

  def new
    @topic = Topic.find(params[:topic_id])
  end

  def edit
    @resource = Resource.find(params[:id])
    @topic = Topic.find(params[:topic_id])
  end

  def update
    @resource = Resource.find(params[:id])
    @resource.topic_id = params[:topic_id]
    if @resource.update(edit_resource_params)
      redirect_to topic_resources_path(@resource.topic_id)
    else
      render :edit
    end
  end

  def create
      @resource = Resource.new(resource_params)
      @resource.topic_id = params[:topic_id]
      if @resource.save
        redirect_to topic_resources_path(@resource.topic_id)
      else
        render :new
      end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @topic = Topic.find(params[:topic_id])
    @resource.destroy
    redirect_to topic_resources_path(@topic.id)
  end

  private
  def resource_params
    params.require(:resources).permit(:url, :email, :phone, :address, :zip_code, :summary, :name)
  end

  def edit_resource_params
    params.require(:resource).permit(:url, :email, :phone, :address, :zip_code, :summary, :name)
  end
end
