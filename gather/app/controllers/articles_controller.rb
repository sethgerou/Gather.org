class ArticlesController < ApplicationController
  def index
    @topic = Topic.find(params[:topic_id])
    @articles = Article.where(topic_id: params[:topic_id])
    @articles = @articles.sort { |a,b| b.updated_at <=> a.updated_at }
    render :index
  end

  def new
    @topic = Topic.find(params[:topic_id])
  end

  def edit
    @article = Article.find(params[:id])
    @topic = Topic.find(params[:topic_id])
  end

  def update
    @article = Article.find(params[:id])
    @article.topic_id = params[:topic_id]
    if @article.update(edit_article_params)
      redirect_to topic_articles_path(@article.topic_id)
    else
      render :edit
    end
  end

  def create
      @article = Article.new(new_article_params)
      @article.topic_id = params[:topic_id]
      if @article.save
        redirect_to topic_articles_path(@article.topic_id)
      else
        render :new
      end
  end

  def destroy
    @article = Article.find(params[:id])
    @topic = Topic.find(params[:topic_id])
    @article.destroy
    redirect_to topic_articles_path(@topic.id)
  end

  private
  def new_article_params
    params.require(:articles).permit(:author, :email, :body)
  end

  def edit_article_params
    params.require(:article).permit(:author, :email, :body)
  end

end
