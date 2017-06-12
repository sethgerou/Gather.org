require 'rails_helper'

describe ResourcesController do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}
  let(:resource) {Resource.create(url: "www.parent-resources.com", phone: "800-555-1212", email: "contact-us@parent-resources.com", address: "123 fake st., Springfield", zip_code: 98104, summary: "Parent Resources provides many resources for parents.  We're here to help!", topic_id: 1)}

  describe 'GET #index of resources' do
      it "assigns all the resources as @resources" do
        get :index, params: { topic_id: topic.id }
        expect(assigns(:resources)).to eq Resource.all
      end
      it 'renders a list of resources' do
        expect(get :index, params: { topic_id: topic.id }).to render_template(:index)
      end
  end
end
