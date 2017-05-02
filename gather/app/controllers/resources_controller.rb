class ResourcesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @resources = Resource.where(topic_id: @topic.id)
    render :index
  end
end
