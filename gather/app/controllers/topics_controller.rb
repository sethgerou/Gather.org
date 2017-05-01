class TopicsController < ActionController::Base
  protect_from_forgery with: :exception

def index
  @topics = Topic.all
  render :index
end

end
