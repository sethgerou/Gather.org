class StoriesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @stories = Story.where(topic_id: @topic.id)
    render :index
  end

  def new
  end

  def create
    p params
      @story = Story.new(story_params)
      @story.topic_id = params[:topic_id]
      if verify_recaptcha(model: @story) && @story.save
        redirect_to topic_stories_path(@story.topic_id)
      else
        render :new
      end
  end

  private
  def story_params
    params.require(:stories).permit(:author, :email, :body, :topic_id)
  end
end
