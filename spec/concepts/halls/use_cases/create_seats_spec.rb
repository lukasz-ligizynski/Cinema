# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Halls::UseCases::CreateSeats do
  let(:params) { { rows: [1, 2, 3], columns: [1, 2] } }
  subject(:subject) { described_class.new(params: params).call }
  context 'when params are correct' do
    it 'Should return table of seats' do
      expect(subject).to eq(['1,1', '1,2', '2,1', '2,2', '3,1', '3,2'])
    end
  end
end
