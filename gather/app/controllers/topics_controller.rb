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

  def create
      @topic = Topic.new(topic_params)
      if @topic.save
        redirect_to topics_path
      else
        render :new
      end
  end
  private
  def topic_params
    params.require(:topics).permit(:name, :summary, :min_age, :max_age)
  end
end
