# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Halls::UseCases::Create do
  let(:params) { { name: 'Test Hall', rows: [1, 2], columns: [1, 2] } }
  subject(:subject) { described_class.new.call(params: params) }
  context 'when params are correct' do
    it 'Should create Hall with params and created table of seats' do
      expect { subject }.to change { Hall.count }.by(1)
    end
  end
  context 'when all params are missing' do
    let(:params) { {} }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
  context 'when rows or columns params are missing' do
    let(:params) { { rows: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
    let(:params) { { columns: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
end
