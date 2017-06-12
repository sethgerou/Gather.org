class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    @topics = @topics.sort { |a,b| a.name.downcase <=> b.name.downcase }
    render :index
  end

  def age
    render :ages
  end

  def agefilter
    @topics = Topic.where(min_age: [params[:ages][:min_age]..params[:ages][:max_age]])
    render :index
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(edit_topic_params)
      redirect_to topics_path
    else
      render :edit
    end
  end

  def create
      @topic = Topic.new(topic_params)
      if @topic.save
        redirect_to topics_path
      else
        render :new
      end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topics_path
  end

  private
  def topic_params
    params.require(:topics).permit(:name, :summary, :min_age, :max_age)
  end

  def edit_topic_params
    params.require(:topic).permit(:name, :summary, :min_age, :max_age)
  end
end
