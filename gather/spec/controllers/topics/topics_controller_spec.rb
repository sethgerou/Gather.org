require 'rails_helper'

describe TopicsController do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}

  describe 'GET #index of topics' do
      it "assigns all the topics as @topics" do
        get :index
        expect(assigns(:topics)).to eq Topic.all
      end
      it 'renders a list of topics' do
        expect(get :index).to render_template(:index)
      end
  end

  describe 'GET #show for a topic' do
   it 'responds with status code 200' do
     get :show, params: { id: topic.id }
     expect(response).to have_http_status 200
   end

   it 'assigns the correct topic as @topic' do
     get :show, params: { id: topic.id }
     expect(assigns(:topic)).to eq(topic)
   end

   it 'renders the :show template' do
     get :show, params: { id: topic.id }
     expect(response).to render_template(:show)
   end
 end
end
