class ReviewsController < ApplicationController

def index
  @reviews = Review.where(resource_id: params[:resource_id])
  @resource = Resource.find(params[:resource_id])
  render :index
end

def new
end

def edit
  @review = Review.find(params[:id])
end

def update
  @review = Resource.find(params[:id])
  if @review.update(edit_review_params)
    redirect_to topic_reviews_path(@review.topic_id)
  else
    render :edit
  end
end

def create
  @review = Review.new(review_params)
  @topic = Topic.find(params[:topic_id])
  @resource = Resource.find(params[:resource_id])
  @review.resource_id = params[:resource_id]
  if verify_recaptcha(model: @review) && @review.save
    redirect_to topic_resources_path(@topic, @resource)
  else
    render :new
  end
end

def destroy
  @review = Review.find(params[:id])
  @resource = Resource.find(params[:resource_id])
  @review.destroy
  redirect_to topic_resources_path(@resource.id)
end

private
def review_params
  params.require(:reviews).permit(:author, :stars, :body, :email)
end
def edit_review_params
  params.require(:reviews).permit(:author, :stars, :body, :email)
end
end
