# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Seances::UseCases::Create do
  let(:params) { { hall_id: 1, movie_id: 1, start_time: Time.now, end_time: Time.now } }
  subject(:subject) { described_class.new.call(params: params) }
  context 'when params are correct' do
    it 'Should create Seance with params' do
      create(:movie)
      create(:hall)
      expect { subject }.to change { Seance.count }.by(1)
    end
  end
  context 'when all params are missing' do
    let(:params) { {} }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
  context 'when one param is missing' do
    let(:params) { { start_time: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
    let(:params) { { end_time: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
end
