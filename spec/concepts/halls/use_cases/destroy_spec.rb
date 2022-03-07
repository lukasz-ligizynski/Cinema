# frozen_string_literal: true

require 'spec_helper'
require 'rails_helper'

RSpec.describe Halls::UseCases::Destroy do
  FactoryBot.build(:hall)
  byebug
  subject(:subject) { described_class.new.call(hall.id) }
  context 'when destroy was sucesfull' do
    it 'Should destroy the objct' do
      expect { subject }.to change { Hall.count }.by(1)
    end
  end

end
