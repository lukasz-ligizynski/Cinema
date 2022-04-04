require 'rails_helper'

RSpec.describe 'Tickets', type: :request do
  describe 'GET ticket#index' do
    it 'should get index' do
      get '/tickets'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST ticket#create' do
    it 'create ticket with valid attributes' do
      ticket_params = { ticket: {
        reservation_id: FactoryBot.create(:reservation).id,
        price: rand(20..50),
        ticket_type: Faker::Lorem.word,
        seat: '1,1'
      } }
      post '/tickets', params: ticket_params.to_json, headers: { "Content-Type": 'application/json' }
      json = JSON.parse(response.body)
      expect(response).to have_http_status(201)
    end
  end
end
