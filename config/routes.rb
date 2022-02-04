# frozen_string_literal: true

Rails.application.routes.draw do
  get '/movies', to: 'movies#index'
  get '/halls', to: 'halls#index'
  get '/seances', to: 'seances#index'
end
2
