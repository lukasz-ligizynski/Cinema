# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Tickets::UseCases::FindEmptySeat do
  let(:reservation) { create(:reservation) }
  let(:params) { { reservation_id: Reservation.last.id, ticket_type: 'Normal 2D', price: 36.00 } }
  subject(:subject) { described_class.new(params: params).call }

  context 'when params are correct' do
    it 'Should return seat that is empty' do
      reservation
      expect(subject).to eq('1,1')
    end
  end
end
