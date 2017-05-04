class ReviewsController < ApplicationController

def index
  @reviews = Review.where(resource_id: params[:resource_id])
  @resource = Resource.find(params[:resource_id])
  render :index
end

def new
end

def create
  @review = Review.new(review_params)
  @review.topic_id = params[:topic_id]
  @review.resource_id = params[:resource_id]
  if verify_recaptcha(model: @review) && @review.save
    redirect_to topic_resources_path(@review.topic_id)
  else
    render :new
  end
end

private
def review_params
  params.require(:reviews).permit(:author, :stars, :body, :email)
end
end
