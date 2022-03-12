# frozen_string_literal: true

Rails.application.routes.draw do
  resources :movies, only: [:index]
  resources :halls, only: %i[index create]
  resources :seances, only: [:index]
  resources :tickets, only: %i[index create]
  resources :reservations, only: %i[index create]
  resources :ticket_desks, only: %i[index create]
end
