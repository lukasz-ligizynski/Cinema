require 'rails_helper'

RSpec.describe 'Halls', type: :request do
  describe 'GET halls#index' do
    it 'should get index' do
      get '/halls'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST halls#create' do
    it 'create hall with valid attributes' do
      hall_params = { hall: {
        rows: [1, 2, 3, 4, 5],
        columns: [1, 2, 3, 4, 5],
        name: Faker::Name
      } }
      post '/halls', params: hall_params.to_json, headers: { "Content-Type": 'application/json' }
      json = JSON.parse(response.body)
      expect(response).to have_http_status(201)
    end
  end
end
