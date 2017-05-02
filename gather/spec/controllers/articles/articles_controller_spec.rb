require 'rails_helper'

describe ArticlesController do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}
  let(:article) {Article.create(author: "health professional", email: "dr@company.com", body: "Article about something... The most severe consequence of iron depletion is iron deficiency anemia (IDA), and it is still considered the most common nutrition deficiency worldwide. Although the etiology of IDA is multifaceted, it generally results when the iron demands by the body are not met by iron absorption, regardless of the reason.", topic_id: 1)}

  describe 'GET #index of articles' do
      it "assigns all the articles as @articles" do
        get :index, params: { topic_id: topic.id }
        expect(assigns(:articles)).to eq Article.all
      end
      it 'renders a list of articles' do
        expect(get :index, params: { topic_id: topic.id }).to render_template(:index)
      end
  end
end
