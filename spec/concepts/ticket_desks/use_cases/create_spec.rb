# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe TicketDesks::UseCases::Create do
  let(:params) { { status: 1 } }
  subject(:subject) { described_class.new.call(params: params) }
  context 'when params are correct' do
    it 'Should create TicketDesk with params' do
      expect { subject }.to change { TicketDesk.count }.by(1)
    end
  end
  context 'when all params are missing' do
    let(:params) { {} }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
  context 'when one param is missing' do
    let(:params) { { status: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
end
