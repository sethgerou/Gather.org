class ResourcesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @resources = Resource.where(topic_id: @topic.id)
    render :index
  end

  def new
    @topic = Topic.find(params[:topic_id])
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

  private
  def resource_params
    params.require(:resources).permit(:url, :email, :phone, :address, :zip_code, :summary)
  end
end
