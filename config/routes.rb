# frozen_string_literal: true

Rails.application.routes.draw do
  get '/movies', to: 'movies#index'
  get '/halls', to: 'halls#index'
end
