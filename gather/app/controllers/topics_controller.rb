class TopicsController < ApplicationController

  def index
    @topics = Topic.all
    render :index
  end

  def age
    render :ages
  end

  def one
    @topics = Topic.where(min_age: [0..2])
    render :index
  end

  def two
    @topics = Topic.where(min_age: [4..6])
    render :index
  end

  def three
    @topics = Topic.where(min_age: [7..12])
    render :index
  end

  def four
    @topics = Topic.where(min_age: [13..18])
    render :index
  end

  def five
    @topics = Topic.where(min_age: [19..36])
    render :index
  end

  def six
    @topics = Topic.where(min_age: [36..90])
    render :index
  end

  def show
    @topic = Topic.find(params[:id])
  end

end
