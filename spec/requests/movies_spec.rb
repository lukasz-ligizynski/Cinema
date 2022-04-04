require 'rails_helper'

RSpec.describe 'Movies', type: :request do
  describe 'GET movies#index' do
    it 'should get index' do
      get '/movies'
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST movies#create' do
    it 'create movie with valid attributes' do
      movie_params = { movie: {
        title: Faker::Movie.title,
        description: 'Test Description',
        duration: rand(1800..10_800)
      } }
      post '/movies', params: movie_params.to_json, headers: { "Content-Type": 'application/json' }
      json = JSON.parse(response.body)
      expect(response).to have_http_status(201)
    end
  end
end
