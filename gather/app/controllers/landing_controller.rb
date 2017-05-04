class LandingController < ApplicationController
    include SessionsHelper

  def index
    render :index, layout: false
  end

end
