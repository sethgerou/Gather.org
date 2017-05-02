require 'rails_helper'

describe StoriesController do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}
  let(:story) {Story.create(author: "parent", email: "parent@gmail.com", body: "My older daughter will turn 11 this summer. I realize that makes her basically old enough for sleep-away camp. While part of me (the hovering part) wants to grab her, hold her close and never let her go off on her own for one or two weeks (or, gasp, a month!), another part wants to shove her on the bus and happily wave her off.
  Summer camp changed my life.", topic_id: 1)}

  describe 'GET #index of stories' do
      it "assigns all the stories as @stories" do
        get :index, params: { topic_id: topic.id }
        expect(assigns(:stories)).to eq Story.all
      end   
      it 'renders a list of stories' do
        expect(get :index, params: { topic_id: topic.id }).to render_template(:index)
      end
  end
end
