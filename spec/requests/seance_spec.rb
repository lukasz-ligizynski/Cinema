require 'rails_helper'

RSpec.describe 'Seances', type: :request do
  describe 'GET seances#index' do
    it 'should get index' do
      get '/seances'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST seances#create' do
    it 'create seance with valid attributes' do
      seance_params = { seance: {
        hall_id: FactoryBot.create(:hall).id,
        movie_id: FactoryBot.create(:movie).id,
        start_time: DateTime.now + 10,
        end_time: DateTime.now + 11
      } }
      post '/seances', params: seance_params.to_json, headers: { "Content-Type": 'application/json' }
      json = JSON.parse(response.body)
      expect(response).to have_http_status(201)
    end
  end
end
