class StoriesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @stories = Story.where(topic_id: @topic.id)
    render :index
  end

  def new
  end

  def edit
    @story = Story.find(params[:id])
    @topic = Topic.find(params[:topic_id])
  end

  def update
    @story = Story.find(params[:id])
    @story.topic_id = params[:topic_id]
    if @story.update(edit_story_params)
      redirect_to topic_stories_path(@story.topic_id)
    else
      render :edit
    end
  end

  def create
      @story = Story.new(story_params)
      @story.topic_id = params[:topic_id]
      if verify_recaptcha(model: @story) && @story.save
        redirect_to topic_stories_path(@story.topic_id)
      else
        render :new
      end
  end

  def destroy
    @story = Story.find(params[:id])
    @topic = Topic.find(params[:topic_id])
    @story.destroy
    redirect_to topic_stories_path(@topic.id)
  end

  private
  def story_params
    params.require(:stories).permit(:author, :email, :body)
  end


  def edit_story_params
    params.require(:story).permit(:author, :email, :body)
  end
end
