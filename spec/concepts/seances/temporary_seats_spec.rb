# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Seances::UseCases::TemporarySeats do
  let(:params) { { hall_id: Hall.last.id } }
  subject(:subject) { described_class.new(params: params).call }
  context 'when params are correct' do
    it 'Should return table of seats' do
      create(:hall)
      expect(subject.first[:taken]).to eq(0)
    end
  end
end
