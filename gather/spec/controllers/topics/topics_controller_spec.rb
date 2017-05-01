require 'rails_helper'

describe TopicsController do
  let(:topic) {Topic.create(title: "Reflux", summary: "This is a summary")}

  describe 'GET #index of topics' do
      it "assigns all the topics as @topics" do
        get :index
        expect(assigns(:topics)).to eq Topic.all
      end
      it 'renders a list of topics' do
        expect(get :index).to render_template(:index)
      end
  end
end
