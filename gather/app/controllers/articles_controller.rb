class ArticlesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @articles = Article.where(topic_id: params[:topic_id])
    render :index
  end

  def new
    @topic = Topic.find(params[:topic_id])
  end

  def create
      @article = Article.new(article_params)
      @article.topic_id = params[:topic_id]
      if @article.save
        redirect_to topic_articles_path(@article.topic_id)
      else
        render :new
      end
  end

  private
  def article_params
    params.require(:articles).permit(:author, :email, :body)
  end
end
