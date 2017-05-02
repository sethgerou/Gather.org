class StoriesController < TopicsController
  def index
    @topic = Topic.find(params[:topic_id])
    @stories = Story.where(topic_id: @topic.id)
    render :index
  end
end
