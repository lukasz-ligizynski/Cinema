require 'rails_helper'

RSpec.describe 'Reservations', type: :request do
  describe 'GET reservation#index' do
    it 'should get index' do
      get '/reservations'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST reservation#create' do
    it 'create reservation with valid attributes' do
      reservation_params = { reservation: {
        client_id: FactoryBot.create(:client).id,
        seance_id: FactoryBot.create(:seance).id,
        ticket_desk_id: FactoryBot.create(:ticket_desk).id,
        status: Faker::Lorem.word
      } }
      post '/reservations', params: reservation_params.to_json, headers: { "Content-Type": 'application/json' }
      json = JSON.parse(response.body)
      byebug
      expect(response).to have_http_status(201)
    end
  end
end
