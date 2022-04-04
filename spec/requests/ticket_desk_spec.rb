require 'rails_helper'

RSpec.describe 'Ticket Desks', type: :request do
  describe 'GET ticket_desk#index' do
    it 'should get index' do
      get '/ticket_desks'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST ticket_desk#create' do
    it 'create ticket_desk with valid attributes' do
      ticket_desk_params = { ticket_desk: {
        status: Faker::Boolean
      } }
      post '/ticket_desks', params: ticket_desk_params.to_json, headers: { "Content-Type": 'application/json' }
      json = JSON.parse(response.body)
      expect(response).to have_http_status(201)
    end
  end
end
