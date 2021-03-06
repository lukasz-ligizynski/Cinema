# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_312_160_438) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'cient_promotions', force: :cascade do |t|
    t.bigint 'client_id'
    t.bigint 'promotion_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['client_id'], name: 'index_cient_promotions_on_client_id'
    t.index ['promotion_id'], name: 'index_cient_promotions_on_promotion_id'
  end

  create_table 'clients', force: :cascade do |t|
    t.string 'email'
    t.boolean 'real_user'
    t.string 'first_name'
    t.string 'last_name'
    t.integer 'age'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'halls', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'seats', default: [], array: true
    t.string 'columns', default: [], array: true
    t.string 'rows', default: [], array: true
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'description'
    t.string 'title'
    t.integer 'duration'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'promotions', force: :cascade do |t|
    t.string 'description'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'reservations', force: :cascade do |t|
    t.bigint 'seance_id'
    t.bigint 'ticket_desk_id'
    t.bigint 'client_id'
    t.string 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['client_id'], name: 'index_reservations_on_client_id'
    t.index ['seance_id'], name: 'index_reservations_on_seance_id'
    t.index ['ticket_desk_id'], name: 'index_reservations_on_ticket_desk_id'
  end

  create_table 'seances', force: :cascade do |t|
    t.bigint 'movie_id'
    t.bigint 'hall_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.datetime 'start_time'
    t.datetime 'end_time'
    t.json 'seats', default: [], array: true
    t.index ['hall_id'], name: 'index_seances_on_hall_id'
    t.index ['movie_id'], name: 'index_seances_on_movie_id'
  end

  create_table 'ticket_desks', force: :cascade do |t|
    t.boolean 'status'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'tickets', force: :cascade do |t|
    t.bigint 'reservation_id'
    t.string 'seat'
    t.string 'ticket_type'
    t.float 'price'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['reservation_id'], name: 'index_tickets_on_reservation_id'
  end
end
