require 'rails_helper'

RSpec.describe Resource, :type => :model do
  let(:topic) {Topic.create(name: "Reflux", summary: "This is a summary")}

  it "is valid with valid attributes" do
                  p topic.id
    expect(Resource.new(url: "healtybaby.com", phone: "800-555-1212", email: "contact@healthybaby.com", address: "123 fake st, springfield", zip_code: 98104, summary: "provides good services, and service-albe goods", topic_id: 9)).to be_valid
  end

  it "is not valid without a url" do
    expect(Resource.new(phone: "800-555-1212", email: "contact@healthybaby.com", address: "123 fake st, springfield", zip_code: 98104, summary: "provides good services, and service-albe goods", topic_id: 9)).not_to be_valid
  end
  it "is not valid without a summary" do
    expect(Resource.new(url: "healtybaby.com", phone: "800-555-1212", email: "contact@healthybaby.com", address: "123 fake st, springfield", zip_code: 98104, topic_id: 9)).not_to be_valid
  end
  it "is not valid without an email" do
    expect(Resource.new(url: "healtybaby.com", phone: "800-555-1212", address: "123 fake st, springfield", zip_code: 98104, summary: "provides good services, and service-albe goods", topic_id: 9)).not_to be_valid
  end
  it "is not valid without a zip code" do
    expect(Resource.new(url: "healtybaby.com", phone: "800-555-1212", email: "contact@healthybaby.com", address: "123 fake st, springfield", summary: "provides good services, and service-albe goods", topic_id: 9)).not_to be_valid
  end
end
