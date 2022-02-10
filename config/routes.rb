# frozen_string_literal: true

Rails.application.routes.draw do
  get '/movies', to: 'movies#index'
  get '/halls', to: 'halls#index'
  get '/seances', to: 'seances#index'
  get '/tickets', to: 'tickets#index'
  get '/reservations', to: 'reservations#index'
  get '/create_hall', to: 'halls#new'
  get '/ticket_desks', to: 'ticketdesks#index'
  get '/create_reservation', to: 'reservations#new'
end
