# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Movies::UseCases::Create do
  let(:params) { { title: 'New', description: 'Some description', duration: 5400 } }
  subject(:subject) { described_class.new.call(params: params) }
  context 'when params are correct' do
    it 'Should create Movie with params' do
      expect { subject }.to change { Movie.count }.by(1)
    end
  end
  context 'when all params are missing' do
    let(:params) { {} }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
  context 'when one param is missing' do
    let(:params) { { title: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
    let(:params) { { description: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
    let(:params) { { duration: nil } }
    it 'Should return nil' do
      expect { subject }.nil?
    end
  end
end
