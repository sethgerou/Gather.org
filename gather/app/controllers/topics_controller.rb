class TopicsController < ApplicationController

  def index
    @topics = Topic.all
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

end
