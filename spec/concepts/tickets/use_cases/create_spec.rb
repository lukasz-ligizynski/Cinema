# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Tickets::UseCases::Create do
  let(:reservation) { create(:reservation) }
  let(:params) { { reservation_id: Reservation.last.id , ticket_type: 'Normal 2D', seat: '1,1', price: 36.00 } }
  subject(:subject) { described_class.new.call(params: params) }
  context 'when params are correct' do
    it 'Should create Ticket with params' do
      reservation
      expect { subject }.to change { Ticket.count }.by(1)
    end
  end
  context 'when all params are missing' do
    let(:params) { {} }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
  context 'when one param is missing' do
    let(:params) { { reservation_id: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
    let(:params) { { ticket_type: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
end
