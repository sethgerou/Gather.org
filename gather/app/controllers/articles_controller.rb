class ArticlesController < ApplicationController
  
  def index
    @topic = Topic.find(params[:topic_id])
    @articles = Article.where(topic_id: params[:topic_id])
    render :index
  end

end
